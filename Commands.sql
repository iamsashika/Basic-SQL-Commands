--Comments in MySql
--   Single Line Comments
--       #   This comment continues to the end of line
--       --  This comment continues to the end of line
--       
--   Inline Comments
--       SELECT * FROM /* This is a inline comment*/ students;
--
--   Multi Line comments
--   /* multiple line comments  */       
--


/*-- ----------------------------------------------------------------
                    Database Related Commands
--------------------------------------------------------------------*/

-- Show databases 
    SHOW DATABASES;

-- Select a database to work with
    USE database_name;

-- Create database
    CREATE DATABASE database_name;

-- Drop Database
    DROP DATABASE database_name;


-- Rename Database
    #No Commands



/*-- ----------------------------------------------------------------
                    Table Related Commands
--------------------------------------------------------------------*/

-- Show Tables
    SHOW TABLES;

-- Create Table - Simple Table with no constraints
    CREATE TABLE table_name (
        attribute_name_1 INT,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR        
    );


-- Create Table - With Primary Key constraints 
    CREATE TABLE table_name (
        attribute_name_1 INT,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR        
    );


/*-------------------------------------------------------------------*/