# Celestial Bodies Database

### Create universe database
```sql
create databsae universe;
```

### Connect to the newly created database
```sql
\c universe
```

```sql

# galaxy table schema
                                                  Table "public.galaxy"
+----------------------------+-----------------------+-----------+----------+-------------------------------------------+
|           Column           |         Type          | Collation | Nullable |                  Default                  |
+----------------------------+-----------------------+-----------+----------+-------------------------------------------+
| galaxy_id                  | integer               |           | not null | nextval('galaxy_galaxy_id_seq'::regclass) |
| name                       | character varying(30) |           |          |                                           |
| total_planets              | integer               |           |          |                                           |
| distance_from_other_galaxy | integer               |           |          |                                           |
| age_in_million_of_years    | numeric(4,1)          |           |          |                                           |
| galaxy_description         | text                  |           |          |                                           |
+----------------------------+-----------------------+-----------+----------+-------------------------------------------+

-- Galaxy table values
+-----------+----------+---------------+----------------------------+-------------------------+---------------------+
| galaxy_id |   name   | total_planets | distance_from_other_galaxy | age_in_million_of_years | galaxy_description  |
+-----------+----------+---------------+----------------------------+-------------------------+---------------------+
|         1 | galaxy1  |             1 |                        100 |                    10.1 | galaxy1 is amazing  |
|         2 | galaxy2  |             2 |                        200 |                    20.1 | galaxy2 is amazing  |
|         3 | galaxy3  |             3 |                        300 |                    30.1 | galaxy3 is amazing  |
|         4 | galaxy4  |             4 |                        400 |                    40.1 | galaxy4 is amazing  |
|         5 | galaxy5  |             5 |                        500 |                    50.1 | galaxy5 is amazing  |
|         6 | galaxy6  |             6 |                        600 |                    60.1 | galaxy6 is amazing  |
|         7 | galaxy7  |             7 |                        700 |                    70.1 | galaxy7 is amazing  |
|         8 | galaxy8  |             8 |                        800 |                    80.1 | galaxy8 is amazing  |
|         9 | galaxy9  |             9 |                        900 |                    90.1 | galaxy9 is amazing  |
|        10 | galaxy10 |            10 |                       1000 |                   100.1 | galaxy10 is amazing |
+-----------+----------+---------------+----------------------------+-------------------------+---------------------+






# star table schema
                                           Table "public.star"
+------------------+-----------------------+-----------+----------+--------------------------------------+
|      Column      |         Type          | Collation | Nullable |               Default                |
+------------------+-----------------------+-----------+----------+--------------------------------------+
| star_id          | integer               |           | not null | nextval('star_tar_id_seq'::regclass) |
| name             | character varying(30) |           |          |                                      |
| galaxy_id        | integer               |           | not null |                                      |
| star_age         | integer               |           |          |                                      |
| star_description | character varying(80) |           |          |                                      |
+------------------+-----------------------+-----------+----------+--------------------------------------+



# planet table schema
                                              Table "public.planet"
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
|       Column       |         Type          | Collation | Nullable |                  Default                  |
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
| planet_id          | integer               |           | not null | nextval('planet_planet_id_seq'::regclass) |
| name               | character varying(30) |           |          |                                           |
| isspherical        | boolean               |           |          |                                           |
| haslife            | boolean               |           |          |                                           |
| planet_age         | integer               |           |          |                                           |
| planet_description | character varying(80) |           |          |                                           |
| star_id            | integer               |           | not null |                                           |
+--------------------+-----------------------+-----------+----------+-------------------------------------------+


# moon table schema
                                            Table "public.moon"
+------------------+-----------------------+-----------+----------+---------------------------------------+
|      Column      |         Type          | Collation | Nullable |                Default                |
+------------------+-----------------------+-----------+----------+---------------------------------------+
| moon_id          | integer               |           | not null | nextval('moon_moon_id_seq'::regclass) |
| name             | character varying(30) |           |          |                                       |
| moon_age         | integer               |           |          |                                       |
| moon_description | character varying(80) |           |          |                                       |
| planet_id        | integer               |           | not null |                                       |
+------------------+-----------------------+-----------+----------+---------------------------------------+

```