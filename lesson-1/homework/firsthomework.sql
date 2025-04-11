-- =======================
-- SQL HOMEWORK SOLUTION
-- =======================

-- -----------------------
-- EASY SECTION
-- -----------------------

-- 1. DEFINITIONS:

-- Data: Raw facts or figures with no meaning on their own.
-- Example: Numbers, text, images before processing.

-- Database: A structured collection of data stored electronically for easy access and management.

-- Relational Database: A type of database where data is stored in tables (rows and columns) and linked by relationships.

-- Table: The basic unit in a relational database. Contains rows (records) and columns (fields).

-- 2. Five key features of SQL Server:

-- 1) Data Security - Supports encryption, authentication, role-based access.
-- 2) Data Recovery - Backup and restore options.
-- 3) Scalability - Can handle both small and large databases.
-- 4) Integration - Works with Excel, Power BI, Azure, etc.
-- 5) High Performance - Includes indexing, in-memory processing, query optimization.

-- 3. Authentication Modes:

-- Windows Authentication: Uses Windows login system.
-- SQL Server Authentication: Uses username and password created inside SQL Server.

-- -----------------------
-- MEDIUM SECTION
-- -----------------------

-- Creating a new database called SchoolDB
CREATE DATABASE SchoolDB;
GO

-- Using the SchoolDB database
USE SchoolDB;
GO

-- Creating the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
GO

-- Inserting 3 records into Students table
INSERT INTO Students (StudentID, Name, Age)
VALUES 
(28, 'HUSNORA', 22),
(23, 'ODINA', 20),
(77, 'NAVRUZA', 21);
GO

-- Viewing all records from Students table
SELECT * FROM Students;
GO

-- Description of SQL Server, SSMS, and SQL:
-- SQL Server: The actual database engine/system.
-- SSMS: SQL Server Management Studio, a tool used to manage SQL Server databases.
-- SQL: Structured Query Language used to interact with databases.

-- -----------------------
-- HARD SECTION
-- -----------------------

-- SQL command categories with examples:

-- DQL (Data Query Language): Used to query data
-- Example:
SELECT * FROM Students;

-- DML (Data Manipulation Language): Used to modify data
-- Examples:
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Aziz', 17);
UPDATE Students SET Age = 18 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;

-- DDL (Data Definition Language): Used to define or alter table structures
-- Examples:
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
ALTER TABLE Students ADD Grade CHAR(1);
DROP TABLE Students;

-- DCL (Data Control Language): Used for permissions
-- Examples:
-- GRANT SELECT ON Students TO UserName;
-- REVOKE SELECT ON Students FROM UserName;

-- TCL (Transaction Control Language): Used to manage transactions
-- Examples:
-- BEGIN TRANSACTION;
-- UPDATE Students SET Age = 20 WHERE StudentID = 2;
-- COMMIT;
-- or ROLLBACK;

-- Inserting 3 more records with Grade column
-- First, add the Grade column if it doesn't exist
ALTER TABLE Students ADD Grade CHAR(1);
GO

-- Then insert records
INSERT INTO Students (StudentID, Name, Age, Grade)
VALUES 
(1, 'Aziz', 17, 'A'),
(2, 'Malika', 18, 'B'),
(3, 'Javlon', 16, 'C');
GO

-- BACKUP AND RESTORE INSTRUCTIONS (THEORY):

-- BACKUP:
-- 1. Open SSMS.
-- 2. Right-click on SchoolDB in Object Explorer.
-- 3. Choose Tasks > Back Up.
-- 4. Set Backup Type: Full.
-- 5. Choose a destination (e.g., D:\Backups\SchoolDB.bak).
-- 6. Click OK to start the backup.

-- RESTORE:
-- 1. Open SSMS.
-- 2. Right-click on Databases > Restore Database.
-- 3. Choose Device and select the .bak file.
-- 4. Select SchoolDB as destination.
-- 5. Click OK to restore.

-- ========== END ==========
