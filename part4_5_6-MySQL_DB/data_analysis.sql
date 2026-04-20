-- Filename: data_analysis.sql
--
-- File purpose:
-- This file contains 10 queries
-- that showcase the type of information that can be
-- retrieved within the database

-- ********************************
-- Inventory queries
-- ********************************


-- 1) Find the names of all finished products that are currently being held in inventory
-- This is very useful as this finds all products that customers are waiting to pickup;
-- if the finished product is still in our inventory, then either we havn't shipped it out
-- or the customer hasn't picked it up
SELECT i2.itemName
FROM items i2
WHERE i2.itemID IN
	(SELECT inv.itemID
	FROM inventory inv
	WHERE inv.itemAmmount >= 1
		AND inv.itemID IN
			(SELECT i.itemID
			FROM items i 
			WHERE i.itemType = "finished product"));

-- 2) Find the item locations that contain finished products
SELECT DISTINCT inv.itemLocation
FROM items i, inventory inv
WHERE i.itemType = 'finished product'
	AND inv.itemID = i.itemID

-- 3) Find names of all customers who placed in-house orders between 2025-01-20 and 2025-02-01 that cost more than $100 (inclusive)
SELECT c.customerName
FROM customers c
	WHERE c.customerID IN
	(SELECT co.customerID
	FROM customerorders co
	WHERE co.orderDate >= '2025-01-20' 
		AND co.orderDate <= '2025-02-01'
    	AND co.orderCost > 100
    	AND co.orderType = 'in-house')

-- 4) Find how many items with the name 'Brass Sheet' were added to the inventory on 2025-01-19
SELECT SUM(invh.transactionAmmount) as total_brass_sheets
FROM inventoryhistory invh
WHERE invh.transactionDate = '2025-01-19'
	AND invh.itemID = 
		(SELECT i.itemID
		FROM items i
		WHERE i.itemName = "Brass Sheet");
