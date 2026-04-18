-- ********************************
-- Create Employee table
-- empID, empName, empDOB, salary, ssn
-- empID[PK]
-- ********************************
CREATE TABLE Employee(
    empID INTEGER NOT NULL,
    empName VARCHAR(255) NOT NULL,
    empDOB DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    ssn VARCHAR(9) NOT NULL,
    PRIMARY KEY(empID)
);

-- ********************************
-- Create Customers table
-- customerID, customerName, companyName
-- customerID[PK]
-- ********************************
CREATE TABLE Customers(
    customerID INTEGER NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    companyName VARCHAR(255) NOT NULL,
    PRIMARY KEY(customerID)
);

-- ********************************
-- Create CustomerOrders table
-- orderID, customerID, orderDate, orderStatus, orderCost, orderType
-- orderID[PK]
-- customerID[FK]
-- ********************************
CREATE TABLE CustomerOrders(
    orderID INTEGER NOT NULL,
    customerID INTEGER NOT NULL,
    orderDate DATE NOT NULL,
    orderStatus VARCHAR(32) NOT NULL,
    orderCost DECIMAL(10, 2) NOT NULL,
    orderType VARCHAR(32) NOT NULL,
    PRIMARY KEY(orderID),
    FOREIGN KEY(customerID) REFERENCES Customers(customerID)
);

-- ********************************
-- Create WorkLogs table
-- workLogID, empID, customerOrderID, workedHours, workedDate
-- workLogID[PK]
-- empID[FK]
-- customerOrderID[FK]
-- ********************************
CREATE TABLE WorkLogs(
    workLogID INTEGER NOT NULL,
    empID INTEGER NOT NULL,
    customerOrderID INTEGER NOT NULL,
    workedHours DECIMAL(10, 2) NOT NULL,
    workedDate DATE NOT NULL,
    PRIMARY KEY(workLogID),
    FOREIGN KEY (empID) REFERENCES Employee(empID),
    FOREIGN KEY (customerOrderID) REFERENCES CustomerOrders(orderID)
);

-- ********************************
-- Create Items table
-- itemID, itemName, itemType
-- itemID[PK]
-- ********************************
CREATE TABLE Items(
    itemID INTEGER NOT NULL,
    itemName VARCHAR(128) NOT NULL,
    itemType VARCHAR(32) NOT NULL,
    PRIMARY KEY(itemID)
);

-- ********************************
-- Create Inventory table
-- itemID, itemLocation, itemAmmount
-- itemID[PK/FK]
-- ********************************
CREATE TABLE Inventory(
    itemID INTEGER NOT NULL,
    itemLocation VARCHAR(128) NOT NULL,
    itemAmmount INTEGER NOT NULL,
    PRIMARY KEY(itemID),
    FOREIGN KEY(itemID) REFERENCES Items(itemID)
);

-- ********************************
-- Create InventoryHistory table
-- transactionID, empID, itemID, transactionDate, transactionAmmount
-- transactionID[PK]
-- empID[FK]
-- itemID[FK]
-- ********************************
CREATE TABLE InventoryHistory(
    transactionID INTEGER NOT NULL,
    empID INTEGER NOT NULL,
    itemID INTEGER NOT NULL,
    transactionDate DATE NOT NULL,
    transactionAmmount INTEGER NOT NULL,
    PRIMARY KEY(transactionID),
    FOREIGN KEY(empID) REFERENCES Employee(empID),
    FOREIGN KEY(itemID) REFERENCES Items(itemID)
);

-- ********************************
-- Create MetalGrades table
-- metalGradeID, metalType
-- itemID[metalGradeID]
-- ********************************
CREATE TABLE MetalGrades(
    metalGradeID INTEGER NOT NULL,
    metalType VARCHAR(128) NOT NULL,
    PRIMARY KEY(metalGradeID)
);

-- ********************************
-- Create MetalItems table
-- itemID, metalGradeID
-- itemID[PK/FK]
-- metalGradeID[FK]
-- ********************************
CREATE TABLE MetalItems(
    itemID INTEGER NOT NULL,
    metalGradeID INTEGER NOT NULL,
    PRIMARY KEY(itemID),
    FOREIGN KEY(itemID) REFERENCES Items(itemID),
    FOREIGN KEY(metalGradeID) REFERENCES MetalGrades(metalGradeID)
);
