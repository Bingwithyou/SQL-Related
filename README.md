# MySQL Memo

## Basic

- SQL statement end with ';'

- Keywords are case-insensitive, `select` and `SELECT` are the same

  > But it's better using captical case in general

- `String` or `Date` should use single quote like 'abc' to conclude, except `Number` should write directly.

## Create Database

```sql
CREATE DATABASE <name of your database>;
CREATE DATABASE shop;
```

## Create Table

```sql
CREATE TABLE <table name>
(
    <column name 1> <data type> <constraint>,
    <column name 2> <data type> <constraint>,
    <column name 3> <data type> <constraint>,
)

CREATE TABLE Product
(
    product_id CHAR(4) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    product_type VARCHAR(32) NOT NULL,
    sale_price INTEGER ,
    purchase_price INTEGER ,
    regist_date DATE ,
    PRIMARY KEY (product_id)
);
```

### Naming rules

Start with `letters`, `number`, `_` only.

- product_id ✅

- product-id ❌

- 00product-id ❌

## Data Type

- `INTEGER` can't save small digits number.

- `CHAR` static length: `CHAR(8)` and when input `abc` it wll save as `abc-----` (with 5 spaces)

- `VARCHAR` flexible length and will save `abc` without spaces

  > `VARCHAR2` type is avaliable in `Oracle` but not recommend

- `DATE`

## Constraint

- `NOT NULL`

- `PRIMARY KEY`

## Delete and Update

- `DROP TABLE <table name>;`

- `ALTER TABLE <table name> ADD COLUMN <column>`

- or add multipal column `ALTER TABLE <table name> ADD COLUMN (<column1>,<column2>,<column3>)`

- alter and delete column: `ALTER TABLE <table name> DROP COLUMN <column name>`

- insert data:

```sql
START TRANSACTION;

INSERT INTO tableName VALUES ();
...
COMMIT;
```

## Select Distinct

```sql
SELECT DISTINCT column_name from table_name;
```

Begin only in first column_name

## Where

```sql
SELECT column_name, ... FROM table_name WHERE condition;
```

## Notation

Single line:

```sql
-- single line
```

Multiple line:

```sql
/*
Multi line
*/
```

## Operation

- `+`

- `-`

- `*`

- `/`

> any operation with NULL will equal to NULL

## Compare

- `=`

- `<>` unequal

- `>=`

- `>`

- `<=`

- `<`

Note it that when compare between `CHAR`:

- 1 < 10 < 11 < 2 < 222 < 3

## Operation with NULL

- `SELECT xxx FROM xxx WHERE xxx = NULL;` ❌

- `SELECT xxx FROM xxx WHERE xxx IS NULL;` ✅

- `SELECT xxx FROM xxx WHERE xxx IS NOT NULL;` ✅

## Logical operators

- `NOT`

```sql
SELECT xxx FROM xxx WHERE NOT sale_price >= 1000;
-- equal to
SELECT xxx FROM xxx WHERE sale_price < 1000;
```

- `AND` and `OR`, similar to `||` and `&&`

> `AND` will run prior to `OR`, use `()` to giving priority.

- `TRUE` and `FALSE`
