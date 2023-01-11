--UC1
CREATE DATABASE Payroll_Service
USE Payroll_Service

--UC2
CREATE TABLE Employee_Payroll(
Id int PRIMARY KEY IDENTITY(1,1),
Name varchar(30) NOT NULL,
Salary BIGINT NOT NULL,
Start DATE NOT NULL
)

--UC3 
INSERT INTO Employee_Payroll(Name,Salary,Start)VALUES('Karan',700000,'2011-03-04'),('Ram',900000,'2011-09-11'),('Riya',500000,'2015-08-26'),('Niraj',800000,'2017-05-19');

--UC4 
SELECT * FROM Employee_Payroll

--UC5
SELECT Salary FROM Employee_Payroll WHERE Name = 'Karan';
SELECT * FROM Employee_Payroll WHERE Start BETWEEN CAST ('2011-03-04' AS DATE) AND GETDATE()

--UC6
ALTER TABLE Employee_Payroll ADD Gender varchar(1)
UPDATE Employee_Payroll SET Gender = 'F' WHERE Name = 'Riya'
UPDATE Employee_Payroll SET Gender = 'M' WHERE Name = 'Karan' OR Name = 'Ram' or Name = 'Niraj'
UPDATE Employee_Payroll SET Salary = 600000 WHERE Name = 'Ram'
SELECT * FROM Employee_Payroll

--UC7
Select AVG(Salary) From employee_payroll Where Gender = 'M' Group By Gender
Select AVG(Salary) From employee_payroll Where Gender = 'F' Group By Gender
Select SUM(Salary) From employee_payroll Where Gender = 'M' Group By Gender
Select SUM(Salary) From employee_payroll Where Gender = 'F' Group By Gender
Select MIN(Salary) From employee_payroll Where Gender = 'M' Group By Gender
Select MIN(Salary) From employee_payroll Where Gender = 'F' Group By Gender
Select MAX(Salary) From employee_payroll Where Gender = 'M' Group By Gender
Select MAX(Salary) From employee_payroll Where Gender = 'F' Group By Gender
SELECT COUNT(Gender) FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender
SELECT COUNT(Gender) FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender

--UC8
ALTER TABLE Employee_Payroll ADD PhoneNumber BIGINT
ALTER TABLE Employee_Payroll ADD Address varchar(350) DEFAULT 'INDIA'
ALTER TABlE Employee_Payroll ADD Department varchar(90) NOT NULL DEFAULT 'Production'

--UC9
ALTER TABLE Employee_Payroll ADD BasicPay FLOAT NOT NULL DEFAULT 900000
ALTER TABLE Employee_Payroll ADD Deductions FLOAT NOT NULL DEFAULT 10000
ALTER TABLE Employee_Payroll ADD TaxablePay FLOAT NOT NULL DEFAULT 1000
ALTER TABLE Employee_Payroll ADD IncomeTax FLOAT NOT NULL DEFAULT 500
ALTER TABLE Employee_Payroll ADD NetPay FLOAT NOT NULL DEFAULT 100000
SELECT * FROM Employee_Payroll

--UC10
UPDATE Employee_Payroll SET Department = 'SALES' WHERE Name = 'Niraj'
INSERT INTO Employee_Payroll(Name, Salary, Start, Gender, PhoneNumber, Address, Department, BasicPay,Deductions,TaxablePay, IncomeTax,NetPay)
 VALUES('Karan',400000,'2019-06-07','M',9876543210,'Delhi','Marketing',0.0,0.0,0.0,0.0,30000)

 CREATE TABLE DemoTable(
Id int PRIMARY KEY IDENTITY(1,1))

--UC11 DELET ENTIRE TABLE
DROP TABLE DemoTable

--UC12 DELETE A ROW
DELETE FROM Employee_Payroll WHERE Id = 1
--CURD
--C=CREATE
--U=UPDATE
--R=RETRIVE
--D=DELETE
