----------------------------------CREATE DATABASE--------------------------------------------

-- Create the database
CREATE DATABASE AirportDB;

----------------------------------USE DATABASE--------------------------------------------

-- Use the database
USE AirportDB;

----------------------------------CREATE TABLES--------------------------------------------

-- Create the Model table
CREATE TABLE Model(
model_number varchar(10) PRIMARY KEY,
capacity Numeric NOT NULL,
weight Numeric NOT NULL
);

-- Create the Airplane table
CREATE TABLE Airplane(
registration_number varchar(10) PRIMARY KEY,
model_number varchar(10) FOREIGN KEY REFERENCES Model(model_number) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the Employee table
CREATE TABLE Employee(
SSN varchar(9) PRIMARY KEY,
union_membership_number int NOT NULL UNIQUE
);

-- Create the Technician table
CREATE TABLE Technician(
SSN varchar(9) PRIMARY KEY FOREIGN KEY REFERENCES Employee(SSN) ON DELETE CASCADE ON UPDATE CASCADE,
name varchar(50) NOT NULL,
address varchar(100) NOT NULL,
phone_number NUMERIC NOT NULL,
salary NUMERIC NOT NULL
);

-- Create the Expertise table
CREATE TABLE Expertise(
SSN varchar(9) PRIMARY KEY FOREIGN KEY REFERENCES Technician(SSN) ON DELETE CASCADE ON UPDATE CASCADE,
model_number varchar(10) FOREIGN KEY REFERENCES Model(model_number) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the TrafficController table
CREATE TABLE TrafficController(
SSN varchar(9) PRIMARY KEY FOREIGN KEY REFERENCES Employee(SSN) ON DELETE CASCADE ON UPDATE CASCADE,
date_of_most_recent_exam date NOT NULL
);

-- Create the Test table
CREATE TABLE Test(
test_number varchar(10) PRIMARY KEY,
name varchar(50) UNIQUE,
maximum_possible_score NUMERIC NOT NULL
);

-- Create the TestingEvent table
CREATE TABLE TestingEvent(
test_number varchar(10) FOREIGN KEY REFERENCES Test(test_number) ON DELETE CASCADE ON UPDATE CASCADE,
SSN varchar(9) FOREIGN KEY REFERENCES Employee(SSN) ON DELETE CASCADE ON UPDATE CASCADE,
registration_number varchar(10) FOREIGN KEY REFERENCES Airplane(registration_number) ON DELETE CASCADE ON UPDATE CASCADE,
date date NOT NULL,
hours NUMERIC NOT NULL,
score NUMERIC NOT NULL
);

----------------------------------INSERT DATA--------------------------------------------


-- Insert Values Into the Model table
INSERT INTO Model(model_number, capacity, weight)
VALUES
('A12345', 300, 250000),
('B67890', 200, 200000),
('C24689', 100, 150000),
('D24680', 050, 100000),
('E13579', 025, 050000);

-- Insert multiple rows into the Airplane table
INSERT INTO Airplane(registration_number, model_number)
VALUES
('N54321', 'A12345'),
('N67890', 'B67890'),
('N24689', 'C24689'),
('N13579', 'D24680'),
('N12369', 'E13579');

-- Insert multiple rows into the Employee table
INSERT INTO Employee(SSN, union_membership_number)
VALUES
('65-4321', 98765),
('76-5432', 76543),
('87-6543', 87654),
('12-8079', 13692),
('33-5766', 64764);

-- Insert multiple rows into the Technician table
INSERT INTO Technician(SSN, name, address, phone_number, salary)
VALUES
('65-4321', 'Jane Smith', '456 Main Street', '9876543210', 55000),
('76-5432', 'John Doe', '789 Main Street', '1234567890', 60000),
('87-6543', 'Jane Doe', '321 Main Street', '7894561230', 65000),
('12-8079', 'Aaron Schimdt' , '22 Baker Street', '1122334455', 50000),
('33-5766', 'AR King', '56 Wall Street', '6677889900', 100000 );

-- Insert multiple rows into the Expertise table
INSERT INTO Expertise(SSN, model_number)
VALUES
('65-4321', 'A12345'),
('76-5432', 'B67890'),
('87-6543', 'C24689'),
('12-8079', 'D24680'),
('33-5766', 'E13579');

-- Insert multiple rows into the TrafficController table
INSERT INTO TrafficController(SSN, date_of_most_recent_exam)
VALUES
('65-4321', '2022-03-01'),
('76-5432', '2022-03-15'),
('87-6543', '2022-04-01'),
('12-8079', '2022-06-09'),
('33-5766', '2022-05-11');

-- Insert multiple rows into the Test table
INSERT INTO Test(test_number, name, maximum_possible_score)
VALUES
('654321', 'Maintenance Test', 150),
('768901', 'Safety Test', 100),
('876543', 'Communication Test', 75),
('346532', 'Physical Test', 25),
('321123', 'Computer Test', 50);

-- Insert multiple rows into the TestingEvent table
INSERT INTO TestingEvent(test_number, SSN, registration_number, date, hours, score)
VALUES
('654321', '65-4321', 'N54321', '2022-02-01', 3, 120),
('768901', '76-5432', 'N67890', '2022-02-15', 2, 95),
('876543', '87-6543', 'N24689', '2022-03-01', 4, 85),
('346532', '12-8079', 'N13579', '2022-06-09', 5, 20),
('321123', '33-5766', 'N12369', '2022-05-11', 9, 49);

----------------------------------DISPLAY DATA--------------------------------------------

SELECT * FROM Model;
SELECT * FROM Airplane;
SELECT * FROM Employee;
SELECT * FROM Technician;
SELECT * FROM Expertise;
SELECT * FROM TrafficController;
SELECT * FROM Test;
SELECT * FROM TestingEvent;

----------------------------------DELETE DATA--------------------------------------------

DELETE FROM Model;
DELETE FROM Airplane;
DELETE FROM Employee;
DELETE FROM Technician;
DELETE FROM Expertise;
DELETE FROM TrafficController;
DELETE FROM Test;
DELETE FROM TestingEvent;


----------------------------------------------------------------------------------
