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



    CREATE TABLE student_3 (
        index_no INT(3),
        student_name VARCHAR(20) NOT NULL,
        grade VARCHAR(5) DEFAULT '13M',
        x_id INT(3) DEFAULT 100,
        PRIMARY KEY(index_no), 
        FOREIGN KEY(x_id)  REFERENCES parent(parent_id)    
    );

    ALTER TABLE student_3 
        ADD phone VARCHAR(10) NOT NULL;


    ALTER TABLE student_3 
        ADD house VARCHAR(10),
        ADD address VARCHAR(25),
        ADD city VARCHAR(25),
        ADD parentname VARCHAR(50);

    ALTER TABLE student_3 
        MODIFY student_name INT;

    ALTER TABLE student_3 
        MODIFY student_name VARCHAR(40) NOT NULL,
        MODIFY phone INT NOT NULL;

    ALTER TABLE student_3
        CHANGE COLUMN studentname student_name INT;

    ALTER TABLE student_3
        RENAME COLUMN student_name TO studentname;

    ALTER TABLE student_3
        DROP COLUMN city,
        DROP COLUMN phone;


    CREATE TABLE basic (
        id INT(3),
        name VARCHAR (20),
        phoneno VARCHAR(10)        
    );

    ALTER TABLE basic 
        ADD PRIMARY KEY(id);

    ALTER TABLE basic 
        DROP PRIMARY KEY;


    ALTER TABLE student_3 
        ADD PRIMARY KEY(index_no);

    ALTER TABLE student_3 
        ADD CONSTRAINT PRIMARY KEY(index_no);

    ALTER TABLE student_3
        DROP PRIMARY KEY;

    
    ALTER TABLE t1
        ADD FOREIGN KEY(abc) REFERENCES t2(index_no);

    ALTER TABLE t1
        ADD CONSTRAINT FOREIGN KEY(abc) REFERENCES t2(index_no);


    ALTER TABLE t1
        DROP FOREIGN KEY;

    ALTER TABLE t5 
        DROP CONSTRAINT FOREIGN KEY(abc) REFERENCES t6(index_no);
    

    CREATE TABLE t1 (
        id INT(3), -- Primary Key
        name VARCHAR (20),
        abc INT(10)        
    );

    ALTER TABLE t1 
        ADD PRIMARY KEY(id);

    CREATE TABLE t2 (
        index_no INT(3), #primary key
        name VARCHAR (20),
        phoneno VARCHAR(10)        
    );

    ALTER TABLE t2 
        ADD CONSTRAINT PRIMARY KEY(index_no);




    ALTER TABLE t1
        ADD index_no INT;



ALTER TABLE t5 DROP FOREIGN KEY xyz;



INSERT INTO t6 VALUES
    (6, 'bandara', 724),
    (7, 'chandrasena',754);





 CREATE TABLE student_mark (
        id INT(3),
        name VARCHAR (20),
        mark INT(3),
        PRIMARY KEY (id)        
    );



INSERT INTO student_mark 
    (id, name, mark) 
    VALUES
        (1, 'A', 90),
        (2, 'B', 85),
        (3, 'C', 99),
        (4, 'D', 78),
        (5, 'E', 94);


SELECT * 
    FROM student_mark
    WHERE mark >=90;

SELECT * 
    FROM student_mark
    WHERE name = 'a';

SELECT * 
    FROM `student_mark`
    WHERE name = 'a';

SELECT * 
    FROM `student_mark`
    WHERE name = 'a';

SELECT * 
    FROM "student_mark"
    WHERE name = 'a';


USE SCHOOL;

SELECT id, mark, `first name`
    FROM student_mark
    -- WHERE (condition)
    ORDER BY mark ASC;


 CREATE TABLE `teacher info` (
        id INT(3),
        `first name` VARCHAR (20),
        mark INT(3),
        PRIMARY KEY (id)        
    );

DESC `teacher inf`;



DROP table parent, `student`;




CREATE TABLE `student` (
        id INT(3),
        name VARCHAR (20),
        nic VARCHAR(20)        
);




CREATE TABLE `subject` (
        code INT(3),
        name VARCHAR (20)        
);

CREATE TABLE `mark` (
        id INT(3),
        code INT (3),
        mark INT(3)        
);


SHOW TABLES;