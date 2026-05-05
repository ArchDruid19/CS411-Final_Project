from flask import Flask, render_template, request, redirect, url_for
from pymongo import MongoClient
from datetime import datetime
from dotenv import load_dotenv
import os

app = Flask(__name__)

load_dotenv()

mongo_db_uri = os.getenv("MONGO_DB_URI")

client = MongoClient(mongo_db_uri)
db = client["cs411final"]

# Collections
items_col = db["items"]
employees_col = db["employees"]
customers_col = db["customers"]

# HOME (redirect to dashboard)
@app.route("/")
def home():
    return redirect(url_for("dashboard"))

# DASHBOARD (analytics overview)
@app.route("/dashboard")
def dashboard():
    finished_products = list(
        items_col.aggregate(
            [
                {"$unwind": "$Inventory.itemLocationsAndAmmounts"},
                {
                    "$match": {
                        "itemType": "finished product",
                        "Inventory.itemLocationsAndAmmounts.itemAmmount": {"$gte": 1},
                    }
                },
                {
                    "$project": {
                        "_id": "$itemName",
                        "location": "$Inventory.itemLocationsAndAmmounts.itemLocation",
                        "amount": "$Inventory.itemLocationsAndAmmounts.itemAmmount",
                    }
                },
            ]
        )
    )

    employee_hours = list(
        customers_col.aggregate(
            [
                {"$unwind": "$orders"},
                {"$unwind": "$orders.workLogs"},
                {
                    "$match": {
                        "orders.workLogs.workedDate": {
                            "$gte": datetime(2025, 1, 23),
                            "$lte": datetime(2025, 1, 30),
                        }
                    }
                },
                {
                    "$group": {
                        "_id": "$orders.workLogs.empID",
                        "total_hours": {"$sum": "$orders.workLogs.workedHours"},
                    }
                },
            ]
        )
    )

    # Attach employee names
    for e in employee_hours:
        emp = employees_col.find_one({"empID": e["_id"]})
        e["empName"] = emp["empName"] if emp else "Unknown"

    raw_items = list(
        items_col.aggregate(
            [
                {"$match": {"itemType": "raw"}},
                {"$unwind": "$Inventory.itemLocationsAndAmmounts"},
                {
                    "$project": {
                        "_id": "$itemName",
                        "location": "$Inventory.itemLocationsAndAmmounts.itemLocation",
                    }
                },
            ]
        )
    )

    inventory_totals = list(
        items_col.aggregate(
            [
                {"$unwind": "$Inventory.inventoryHistory"},
                {
                    "$group": {
                        "_id": "$itemName",
                        "total": {
                            "$sum": "$Inventory.inventoryHistory.transactionAmmount"
                        },
                    }
                },
                {"$sort": {"total": -1}},
            ]
        )
    )

    active_orders = list(
        customers_col.aggregate(
            [
                {"$unwind": "$orders"},
                {"$match": {"orders.orderStatus": "worked-on"}},
                {
                    "$project": {
                        "_id": 0,
                        "customerName": "$customerName",
                        "companyName": "$companyName",
                        "orderDate": "$orders.orderDate",
                        "orderCost": "$orders.orderCost",
                        "orderStatus": "$orders.orderStatus",
                    }
                },
            ]
        )
    )

    return render_template(
        "dashboard.html",
        finished_products=finished_products,
        employee_hours=employee_hours,
        raw_items=raw_items,
        inventory_totals=inventory_totals,
        active_orders=active_orders
    )

# ITEMS LIST PAGE
@app.route("/items")
def items():
    items = list(items_col.find())
    return render_template("index.html", items=items)

# ITEM DETAIL PAGE
@app.route("/item/<int:item_id>")
def item_detail(item_id):
    item = items_col.find_one({"itemID": item_id})

    if not item:
        return "Item not found", 404

    history = item.get("Inventory", {}).get("inventoryHistory", [])

    for txn in history:
        emp = employees_col.find_one({"empID": txn["empID"]})
        txn["empName"] = emp["empName"] if emp else "Unknown"

    return render_template("item.html", item=item)


# ADD TRANSACTION
@app.route("/add_transaction", methods=["POST"])
def add_transaction():
    try:
        item_id = int(request.form.get("itemID"))
        emp_id = int(request.form.get("empID"))
        amount = int(request.form.get("amount"))
    except (TypeError, ValueError):
        return "Invalid input", 400

    items_col.update_one(
        {"itemID": item_id},
        {
            "$push": {
                "Inventory.inventoryHistory": {
                    "empID": emp_id,
                    "transactionDate": datetime.utcnow(),
                    "transactionAmmount": amount,
                }
            }
        },
    )

    return redirect(url_for("item_detail", item_id=item_id))

# EMPLOYEES PAGE
@app.route("/employees")
def employees():
    employees = list(employees_col.find())
    return render_template("employees.html", employees=employees)

# CUSTOMERS PAGE
@app.route("/customers")
def customers():
    customers = list(customers_col.find())
    return render_template("customers.html", customers=customers)

# ADD ORDER
@app.route("/add_order", methods=["POST"])
def add_order():
    try:
        customer_id = int(request.form.get("customerID"))
        cost = float(request.form.get("orderCost"))
    except (TypeError, ValueError):
        return "Invalid input", 400

    customers_col.update_one(
        {"customerID": customer_id},
        {
            "$push": {
                "orders": {
                    "orderDate": datetime.utcnow(),
                    "orderStatus": "pending",
                    "orderCost": cost,
                    "orderType": "in-house",
                    "workLogs": [],
                }
            }
        },
    )

    return redirect(url_for("customers"))

# RUN APP
if __name__ == "__main__":
    app.run(debug=True)
