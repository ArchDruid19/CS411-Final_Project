-- Filename: data.sql
--
-- File purpose:
-- This file populates each table that was created in tables.sql
-- with a minimum of 10 points of sample data per table.
-- No information within this file is real; all records are completly
-- fictional and are used for testing purposes.

-- ********************************
-- Insert Employees data
-- ********************************
INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(1, 'John A. Smith', '1985-3-12', 65000.00, '123456789');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(2, 'Emily R. Johnson', '1990-7-25', 72000.00, '234567890');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(3, 'Michael T. Brown', '1978-11-2', 88000.00, '345678901');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(4, 'Sarah L. Davis', '1992-1-19', 54000.00, '456789012');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(5, 'David K. Wilson', '1987-9-30', 61000.00, '567890123');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(6, 'Laura M. Taylor', '1995-6-14', 50000.00, '678901234');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(7, 'James P. Anderson', '1983-12-8', 77000.00, '789012345');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(8, 'Olivia S. Thomas', '1998-4-21', 48000.00, '890123456');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(9, 'Daniel J. Moore', '1975-10-11', 92000.00, '901234567');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(10, 'Sophia E. Martin',  '1993-8-5',  56000.00, '678901870');

INSERT INTO Employees(empID, empName, empDOB, salary, ssn)
VALUES(11, 'Steely F. Dan', '1971-10-3', 40000.00, '453901123');

-- ********************************
-- Insert Customers data
-- ********************************
INSERT INTO Customers(customerID, customerName, companyName)
VALUES(1, 'Alex Carter', 'BlueWave Solutions');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(2, 'Maria Lopez', 'Sunrise Technologies');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(3, 'Kevin Patel', 'Individual');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(4, 'Sophia Nguyen', 'GreenLeaf Enterprises');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(5, 'James Robinson', 'UrbanCore Systems');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(6, 'Isabella Martinez', 'Peak Performance Inc.');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(7, 'Daniel Kim', 'SilverLine Logistics');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(8, 'Olivia Brown', 'ClearPath Consulting');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(9, 'Ethan Wilson', 'Individual');

INSERT INTO Customers(customerID, customerName, companyName)
VALUES(10, 'Ava Thompson', 'Horizon Ventures');

-- ********************************
-- Insert CustomerOrders data
-- ********************************
INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1001, 1, '2025-1-15', 'completed', 250.75, 'in-house');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1002, 2, '2025-1-18', 'worked-on', 120.50, 'in-house');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1003, 3, '2025-1-20', 'completed', 89.99, 'mobile');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1004, 4, '2025-1-22', 'cancelled', 45.00, 'in-house');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1005, 5, '2025-1-25', 'completed', 310.20, 'mobile');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1006, 1, '2025-1-28', 'worked-on', 150.00, 'in-house');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1007, 7, '2025-2-1', 'completed', 220.40, 'mobile');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1008, 8, '2025-2-3', 'completed', 75.25, 'in-house');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1009, 9, '2025-2-6', 'worked-on', 199.99, 'in-house');

INSERT INTO CustomerOrders(orderID, customerID, orderDate, orderStatus, orderCost, orderType)
VALUES(1010, 10, '2025-2-10', 'completed', 500.00, 'mobile');

-- ********************************
-- Insert WorkLogs data
-- ********************************
INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(1, 1, 1001, 6, '2025-1-23');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(2, 2, 1002, 7, '2025-1-23');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(3, 3, 1003, 5, '2025-1-23');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(4, 4, 1004, 8, '2025-1-24');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(5, 5, 1002, 6, '2025-1-24');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(6, 6, 1003, 7, '2025-1-24');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(7, 7, 1001, 5, '2025-1-25'); 

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(8, 8, 1002, 6, '2025-1-25');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(9, 9, 1004, 7, '2025-1-25'); 

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(10, 10, 1005, 6, '2025-1-26');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(11, 1, 1003, 5, '2025-1-26');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(12, 2, 1004, 7, '2025-1-26');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(13, 3, 1005, 6, '2025-1-27');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(14, 4, 1001, 6, '2025-1-27');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(15, 5, 1004, 7, '2025-1-27');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(16, 6, 1002, 5, '2025-1-28');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(17, 7, 1005, 6, '2025-1-28');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(18, 8, 1003, 7, '2025-1-28');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(19, 9, 1006, 8, '2025-1-29');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(20, 10, 1004, 6, '2025-1-29');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(21, 1, 1005, 7, '2025-1-29');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(22, 2, 1006, 6, '2025-1-30');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(23, 3, 1001, 5, '2025-1-30');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(24, 4, 1002, 7, '2025-1-30');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(25, 5, 1007, 6, '2025-2-2');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(26, 6, 1006, 7, '2025-2-2');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(27, 7, 1004, 5, '2025-2-2');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(28, 8, 1008, 6, '2025-2-5');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(29, 9, 1007, 7, '2025-2-5');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(30, 10, 1002, 5, '2025-2-5');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(31, 1, 1009, 6, '2025-2-8');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(32, 2, 1008, 7, '2025-2-8');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(33, 3, 1006, 5, '2025-2-8');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(34, 4, 1010, 8, '2025-2-11');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(35, 5, 1009, 6, '2025-2-11');

INSERT INTO WorkLogs(workLogID, empID, customerOrderID, workedHours, workedDate)
VALUES(36, 6, 1008, 7, '2025-2-11');

-- ********************************
-- Insert Items data
-- ********************************
INSERT INTO Items(itemID, itemName, itemType)
VALUES(1, 'Steel Rod', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(2, 'Aluminum Sheet', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(3, 'Copper Wire', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(4, 'Brass Fitting', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(5, 'Titanium Bar', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(6, 'Steel Membrane', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(7, 'Aluminum Frame', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(8, 'Copper Pipe', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(9, 'Brass Valve', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(10, 'Titanium Window Frame', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(11, 'Steel Plate', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(12, 'Aluminum Tube', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(13, 'Copper Coil', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(14, 'Brass Sheet', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(15, 'Titanium Plate', 'raw');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(16, 'Steel Gear', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(17, 'Aluminum Housing', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(18, 'Copper Pipe Connector', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(19, 'Brass Nozzle', 'finished product');

INSERT INTO Items(itemID, itemName, itemType)
VALUES(20, 'Titanium Bracket', 'finished product');

-- ********************************
-- Insert Inventory data
-- ********************************
INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(1, 'Sector A', 26);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(2, 'Sector A', 19);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(3, 'Sector B', 220);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(4, 'Sector D', 3);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(5, 'Sector B', 5);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(6, 'Sector D', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(7, 'Sector C', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(8, 'Sector R', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(9, 'Sector A', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(10, 'Sector B', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(11, 'Sector A', 16);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(12, 'Sector E', 7);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(13, 'Sector B', 4);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(14, 'Sector C', 10);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(15, 'Sector C', 6);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(16, 'Sector B', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(17, 'Sector A', 1);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(18, 'Sector D', 1);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(19, 'Sector D', 1);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(20, 'Sector B', 0);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(1, 'Sector B', 15);

INSERT INTO Inventory(itemID, itemLocation, itemAmmount)
VALUES(4, 'Sector A', 100);

-- ********************************
-- Insert InventoryHistory data
-- ********************************
INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(1, 1, 1, '2025-1-16', 50);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(2, 2, 2, '2025-1-16', 40);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(3, 3, 3, '2025-1-16', 60);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(4, 4, 4, '2025-1-16', 30);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(5, 5, 5, '2025-1-16', 25);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(6, 6, 6, '2025-1-17', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(7, 7, 7, '2025-1-17', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(8, 8, 8, '2025-1-17', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(9, 9, 9, '2025-1-17', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(10, 10, 10, '2025-1-17', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(11, 1, 1, '2025-1-18', -20);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(12, 2, 2, '2025-1-18', -15);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(13, 3, 3, '2025-1-18', -25);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(14, 4, 11, '2025-1-18', 40);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(15, 5, 12, '2025-1-18', 30);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(16, 6, 13, '2025-1-19', 35);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(17, 7, 14, '2025-1-19', 20);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(18, 8, 15, '2025-1-19', 18);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(19, 9, 1, '2025-1-19', -10);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(20, 10, 2, '2025-1-19', -8);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(21, 1, 16, '2025-1-20', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(22, 2, 17, '2025-1-20', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(23, 3, 18, '2025-1-20', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(24, 4, 19, '2025-1-20', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(25, 5, 20, '2025-1-20', 1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(26, 6, 11, '2025-1-21', -15);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(27, 7, 12, '2025-1-21', -10);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(28, 8, 13, '2025-1-21', -12);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(29, 9, 14, '2025-1-21', -5);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(30, 10, 15, '2025-1-21', -8);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(31, 1, 16, '2025-1-22', -1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(32, 5, 20, '2025-1-22', -1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(33, 6, 1, '2025-1-23', 30);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(34, 7, 2, '2025-1-23', 25);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(35, 8, 3, '2025-1-23', 40);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(36, 9, 4, '2025-1-23', 20);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(37, 10, 5, '2025-1-23', 15);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(38, 1, 6, '2025-1-24', -1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(39, 2, 7, '2025-1-24', -1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(40, 3, 8, '2025-1-24', -1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(41, 4, 9, '2025-1-24', -1);

INSERT INTO InventoryHistory(transactionID, empID, itemID, transactionDate, transactionAmmount)
VALUES(42, 5, 10, '2025-1-24', -1);

-- ********************************
-- Insert MetalGrades data
-- ********************************
INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(1, 'Carbon Steel A36');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(2, 'Alloy Steel 4140');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(3, 'Stainless Steel 304');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(4, 'Stainless Steel 316');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(5, 'Tool Steel D2');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(6, 'Aluminum 6061');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(7, 'Aluminum 7075');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(8, 'Brass C360');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(9, 'Copper C110');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(10, 'Titanium Grade 5');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(11, 'Cast Iron 8860');

INSERT INTO MetalGrades(metalGradeID, metalType)
VALUES(12, 'Blue Aluminum 7760');

-- ********************************
-- Insert MetalItems data
-- ********************************
INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(1, 1);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(2, 6);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(3, 9);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(4, 8);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(5, 10);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(11, 2);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(12, 7);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(13, 9);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(14, 8);

INSERT INTO MetalItems(itemID, metalGradeID)
VALUES(15, 10);
