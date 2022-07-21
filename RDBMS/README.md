
## Pre-requsites:
SQL is not case sensitive;


<!-- 1 -->
### 1) List databases
```sql
\l -- this lists all the databases that you have in your system.
```

<!-- 2 -->
### 2) Create database
```sql
CREATE DATABASE db_name;

Ex: create database myDatabase;
```

<!-- 3 -->
### 3) Rename a database
```sql
ALTER DATABASE database_name RENAME TO new_database_name;

Ex: ALTER DATABASE myDatabase RENAME TO mario_database;
```
<!-- 4 -->
### 4) Connect to a database
```sql
\c db_name

Ex: mario-database;

-- mario_database=> if you see something like this that means you are connected to the database

```

<!-- 5 -->
### 5) To create a table
```sql
CREATE TABLE table_name();

Ex: create table characters();
```

<!-- 6 -->
### 6) List all tables
```sql
\d ------- to list all tables in a database

-- If you type \d command this will display all the tables of the database that you are connected to.

mario_database=>           List of relations
+--------+-----------------------------+----------+--------------+
| Schema |            Name             |   Type   |    Owner     |
+--------+-----------------------------+----------+--------------+
| public | characters                  | table    | freecodecamp |
| public | characters_character_id_seq | sequence | freecodecamp |
| public | more_info                   | table    | freecodecamp |
| public | more_info_more_info_id_seq  | sequence | freecodecamp |
+--------+-----------------------------+----------+--------------+
```

### 7) List table properties
```sql
\d table_name ------- to view table structure

Ex: \d characters

                 Table "public.characters"
+------- +- ------+-----------+----------+----------+
| Column |  Type  | Collation | Nullable |  Default |
+------- +- ------+-----------+----------+----------+
|        |        |           |          |          |
+--------+--------+-----------+----------+----------+
```

### 8) To add a column
```sql
ALTER TABLE table_name ADD COLUMN column_name DATATYPE;

-- Datatype SERIAl makes a column of type int with non null constraint and auto increments the integer.
```

### 9) To rename a column
```sql
ALTER TABLE table_name RENAME COLUMN column_name TO new_name;
```

### 10) To drop/delete a column
```sql
ALTER TABLE table_name DROP COLUMN column_name;
```

### 11) To add a primary key to existing column 
```sql
ALTER TABLE table_name ADD PRIMARY KEY(column_name);
```

### 12) To remove a primary key from an existing column
```sql
ALTER TABLE table_name drop constraint constraint_name;

-- To view a constraint name view the table structure using \d table_name command and below that you will find the list of constraints
Ex: alter table characters drop constraint characters_pkey;
```

### 13) Differnt datatypes that can be applied to a column
```sql
NUMERIC(total digits,number of decimal places) -- NUMERIC(4,1)
SERIAL -- generates auto numbering
VARCHAR(size) -- variable character usually for name and text
int -- integer values
```

### 14) Inserting data in tables we just created
```sql
INSERT INTO table_name(column1,column2,... column k) VALUES(value1,value2,... value k);
EX: 
```

### 15) To modify a column datatype
```sql
ALTER TABLE table_name ALTER COLUMN column_name type datatype;
```

### 14) Table referencing
```sql
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);
-- This is how we add a foreing key to a table 
-- A foreign key is a constraint which uniquely identifies a row in another table
EX: 
                                             Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
Indexes:
    "characters_pkey" PRIMARY KEY, btree (character_id)
Referenced by:
    TABLE "more_info" CONSTRAINT "more_info_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)
--Here, the "Referenced by" section tells us that we have character_id column of characters table as foreign key in our more_info table


                                        Table "public.more_info"
+--------------+--------------+-----------+----------+-------------------------------------------------+
|    Column    |     Type     | Collation | Nullable |                     Default                     |
+--------------+--------------+-----------+----------+-------------------------------------------------+
| more_info_id | integer      |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
| birthday     | date         |           |          |                                                 |
| height       | integer      |           |          |                                                 |
| weight       | numeric(4,1) |           |          |                                                 |
| character_id | integer      |           |          |                                                 |
+--------------+--------------+-----------+----------+-------------------------------------------------+
Indexes:
    "more_info_pkey" PRIMARY KEY, btree (more_info_id)
Foreign-key constraints:
    "more_info_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)

--If you look closely you will see the "Foreign-key constraints:" section here

-- In the above example more_info table is our secondary table which consists records about every username from the 
-- character table and both the tables have a common column which is our character_id column which is the primary key 
-- in characters table and the same column is acting as foreign key in out more_info table
```

### 15) To add unique constraint to an existing column
```sql
ALTER TABLE table_name ADD UNIQUE(column_name);
EX: Alter table more_info add unique(character_id);
```

### 16) To add not null constraint to an existing column
```sql
ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;
EX: alter table more_info alter column character_id set not null;
```

```sql
mario_database=> \d more_info
mario_database=>                      Table "public.more_info"
+--------------+--------------+-----------+----------+-------------------------------------------------+
|    Column    |     Type     | Collation | Nullable |                     Default                     |
+--------------+--------------+-----------+----------+-------------------------------------------------+
| more_info_id | integer      |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
| birthday     | date         |           |          |                                                 |
| height       | integer      |           |          |                                                 |
| weight       | numeric(4,1) |           |          |                                                 |
| character_id | integer      |           | not null |                                                 |
+--------------+--------------+-----------+----------+-------------------------------------------------+


insert into more_info(birthday,height,weight,character_id) values('1981-07-09',155,64.5,1);

mario_database=> select * from more_info;
                               
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
+--------------+------------+--------+--------+--------------+





mario_database=> select * from more_info;
                               
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
|            2 | 1983-07-14 |    175 |   48.8 |            2 |
|            3 | 1985-10-18 |    173 |   52.2 |            3 |
|            5 | 1950-01-10 |     66 |   35.6 |            4 |
+--------------+------------+--------+--------+--------------+

alter table more_info rename column height to height_in_cm;

alter table more_info rename column weight_in_kg1 to weight_in_kg;

-- to apply foreign key constraint to an existing column
ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);

-- composite primary key
-- the purpose is simple  table will have multiple rows with the same column1, and multiple rows the same column2.
-- So neither of them are unique. But you will never have the same column1 and column2 in a single row.
-- So the two columns together can be used to uniquely identify each row. 
ALTER TABLE table_name ADD PRIMARY KEY(column1, column2);

# Joins
-- 1) Full Join
SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;
-- this can be used to display everything that is common (more like a union)


-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
select * from characters;
                               
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            7 | Yoshi  | Dinosaur Land    | Green          |
|            6 | Daisy  | Sarasaland       | Orange         |
|            1 | Mario  | Mushroom Kingdom | Red            |
|            4 | Toad   | Mushroom Kingdom | Blue           |
|            5 | Bowser | Koopa Kingdom    | Yellow         |
+--------------+--------+------------------+----------------+


mario_database=> select * from more_info;
                                     
+--------------+------------+--------------+--------------+--------------+
| more_info_id |  birthday  | height_in_cm | weight_in_kg | character_id |
+--------------+------------+--------------+--------------+--------------+
|            1 | 1981-07-09 |          155 |         64.5 |            1 |
|            2 | 1983-07-14 |          175 |         48.8 |            2 |
|            3 | 1985-10-18 |          173 |         52.2 |            3 |
|            4 | 1950-01-10 |           66 |         35.6 |            4 |
|            5 | 1990-10-29 |          258 |        300.0 |            5 |
|            6 | 1989-07-31 |              |              |            6 |
|            7 | 1990-04-13 |          162 |         59.1 |            7 |
+--------------+------------+--------------+--------------+--------------+

-----------------------------------------------------------------------------------------------------
Ex: select * from characters full join more_info on characters.character_id=more_info.character_id;

select * from characters full join character_actions on character_actions.character_id = characters.character_id full join actions on character_actions.action_id=actions.action_id;
-----------------------------------------------------------------------------------------------------
```