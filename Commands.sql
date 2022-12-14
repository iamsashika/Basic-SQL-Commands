/*-- ----------------------------------------------------------------
                    Comments in MYSQL
--------------------------------------------------------------------*/

--Single Line Comments
    #   This comment continues to the end of line
    --  This comment continues to the end of line
       
--Inline Comments
    SELECT * FROM /* This is a inline comment*/ students;

--Multi Line comments
    /*  multiple 
        line 
        comments  */       


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

    /*----------------------------------
                CREATE TABLE 
    -----------------------------------*/

    -- Create Table - Simple Table with NO constraints
        CREATE TABLE table_name (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR        
        );

        /* Database Constraints
            PRIMARY KEY
            FOREIGN KEY
            UNIQUE KEY
            CHECK
            NOT NULL
            DEFAULT
        */

    -- Create Table - With PRIMARY KEY constraints  # Method 1
        CREATE TABLE table_name (
            attribute_name_1 INT PRIMARY KEY,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR        
        );

    -- Create Table - With PRIMARY KEY constraints  # Method 2
        CREATE TABLE table_name (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
            PRIMARY KEY(attribute_name_1)        
        );

    -- Create Table - With Composite PRIMARY KEY constraints 
        CREATE TABLE table_name (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
            PRIMARY KEY(attribute_name_2, attribute_name_3)        
        );

    -- Create Table - With FOREIGN KEY constraints 
        CREATE TABLE table_1 (
            tb_1_pk INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
            tb_2_pk VARCHAR,
            PRIMARY KEY(tb_1_pk), 
            FOREIGN KEY(tb_2_pk)  REFERENCES table_2(tb_2_pk)    
        );

    -- Create Table - With UNIQUE constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT UNIQUE,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );

    -- Create Table - With CHECK constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT CHECK (attribute_name_1 > 50),
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );
    
    -- Create Table - With NOT NULL constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR NOT NULL,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );

    -- Create Table - With DEFAULT constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR DEFAULT default,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );
    
-- Rename Table

    RENAME old_table_name TO new_table_name;

    /*----------------------------------
                ALTER TABLE 
    -----------------------------------*/

        -- Add single column
            ALTER TABLE table_name 
                ADD new_attribute_name INT;

            ALTER TABLE table_name 
                ADD new_attribute_name INT NOT NULL;

        -- Add multiple columns
            ALTER TABLE table_name 
                ADD new_attribute_name_1 INT,
                ADD new_attribute_name_2 INT,
                ADD new_attribute_name_3 INT;
        
        -- DROP COLUMN
            
            # Single Column
                ALTER TABLE table_name 
                    DROP COLUMN attribute_name;

            # Multiple Column
                ALTER TABLE table_name 
                    DROP COLUMN attribute_name_1,
                    DROP COLUMN attribute_name_2,
                    DROP COLUMN attribute_name_3;

        --Modify ColumnData Type

            # Single Column
                ALTER TABLE table_name 
                    MODIFY attribute_name VARCHAR NOT NULL;

            # Multiple Column
                ALTER TABLE table_name 
                    MODIFY attribute_name_1 INT NOT NULL,
                    MODIFY attribute_name_2 INT NOT NULL,
                    MODIFY attribute_name_3 INT NOT NULL;


        -- Modify Column - Column Name
            
            #CHANGE
                ALTER TABLE table_name
                    CHANGE COLUMN old_attribute_name new_attribute_name VARCHAR();

                ALTER TABLE table_name
                    CHANGE COLUMN old_attribute_name_1 new_attribute_name_1 VARCHAR(),
                    CHANGE COLUMN old_attribute_name_2 new_attribute_name_2 VARCHAR(),
                    CHANGE COLUMN old_attribute_name_3 new_attribute_name_3 VARCHAR();

            #RENAME
                ALTER TABLE table_name
                    RENAME COLUMN old_attribute_name TO new_attribute_name;
                
                ALTER TABLE table_name
                    RENAME COLUMN old_attribute_name_1 TO new_attribute_name_1,
                    RENAME COLUMN old_attribute_name_2 TO new_attribute_name_2,
                    RENAME COLUMN old_attribute_name_3 TO new_attribute_name_3;


        -- ADD PRIMARY KEY

        ALTER TABLE table_name
            ADD PRIMARY KEY(attribute_name_1, attribute_name_2);

        -- ALTER TABLE - DROP PRIMARY KEY
            ALTER TABLE table_name
                DROP PRIMARY KEY;

        -- Add Constraints

            --PRIMARY KEY

            -- 

-- INSERT DATA

    INSERT INTO table_name (c_name_1, c_name_2, c_name_3) 
    VALUES (value_1, value_2, value_3);