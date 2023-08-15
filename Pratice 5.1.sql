# 5.1
-- 语法: CREATE VIEW TableName(column name) AS SELECT ...
-- CREATE VIEW ViewPratice5_1 
-- AS
-- SELECT product_name, sale_price, regist_date
-- FROM product
-- WHERE sale_price >= 1000 AND regist_date = "2009-09-20";

-- SELECT * FROM viewpratice5_1;

# 5.3
-- Select product_id,product_name,product_type,sale_price,(SELECT AVG(sale_price) FROM product) AS sale_price_all FROM product;

# 5.4 外层 AS 放在子查询中作为判断条件
-- CREATE VIEW AvgPriceByType
-- AS
-- SELECT product_id,product_name,product_type,sale_price,(SELECT AVG(sale_price) FROM product AS table2 WHERE table1.product_type = table2.product_type) AS avg_sale_price FROM Product AS table1;

-- SELECT * FROM AvgPriceByType;