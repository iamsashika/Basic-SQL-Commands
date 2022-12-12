 CREATE TABLE parent (
        parent_id INT(3),
        parent_name VARCHAR (20),
        phone_no VARCHAR(10),
        PRIMARY KEY (parent_id)        
    );


    CREATE TABLE student (
        index_no INT(3),
        student_name VARCHAR(20),
        grade VARCHAR(5),
        parent_id INT(3),
        PRIMARY KEY(index_no), 
        FOREIGN KEY(parent_id)  REFERENCES parent(parent_id)    
    );

    CREATE TABLE parent (
        parent_id INT(3),
        parent_name VARCHAR (20),
        phone_no VARCHAR(10),
        PRIMARY KEY (parent_id)        
    );

    CREATE TABLE student_2 (
        index_no INT(3),
        student_name VARCHAR(20),
        grade VARCHAR(5),
        x_id INT(3),
        PRIMARY KEY(index_no), 
        FOREIGN KEY(x_id)  REFERENCES parent(parent_id)    
    );


    CREATE TABLE student_2 (
        index_no INT(3),
        student_name VARCHAR(20) NOT NULL,
        grade VARCHAR(5) ,
        x_id INT(3),
        PRIMARY KEY(index_no), 
        FOREIGN KEY(x_id)  REFERENCES parent(parent_id)    
    );
