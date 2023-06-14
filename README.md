**Airport Database Management System**

This project is a database management system for an airport. It allows you to store and manage information about airplane models, airplanes, employees, technicians, expertise, traffic controllers, tests, and testing events.

**Prerequisites**

To run this code, you need a database management system (DBMS) installed, such as MySQL or PostgreSQL. You also need to have the necessary permissions to create a database and execute SQL queries.

**Getting Started**

Create a new database called "AirportDB" using the following SQL command:

    CREATE DATABASE AirportDB;
    
Switch to the "AirportDB" database using the following SQL command:

    USE AirportDB;
    
Create the necessary tables by executing the SQL commands provided in the "CREATE TABLES" section of the code.

Insert data into the tables by executing the SQL commands provided in the "INSERT DATA" section of the code.

Display the data from the tables by executing the SQL commands provided in the "DISPLAY DATA" section of the code.

If needed, you can delete the data from the tables by executing the SQL commands provided in the "DELETE DATA" section of the code.

**Usage**

The code includes various SQL statements for creating tables, inserting data, displaying data, and deleting data. You can execute these statements using a DBMS or an SQL client.

The code provides the following functionalities:

Managing airplane models and their capacities and weights.

Managing airplanes and their registration numbers associated with specific models.

Managing employees and their social security numbers (SSNs) and union membership numbers.

Managing technicians and their SSNs, names, addresses, phone numbers, and salaries.

Managing expertise, which associates technicians with specific airplane models.

Managing traffic controllers and their SSNs and dates of the most recent exam.

Managing tests and their test numbers, names, and maximum possible scores.

Managing testing events, which record the tests taken by employees on specific airplanes, including the date, hours spent, and score.

You can customize and extend the code to suit your specific requirements.

**Acknowledgements**

This code is a demonstration of a database management system for an airport. It is provided as an example and should be adapted to fit the specific needs of your project.
