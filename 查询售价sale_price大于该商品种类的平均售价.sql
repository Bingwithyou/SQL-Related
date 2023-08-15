# 关联子查询，查询出售价sale_price大于该商品种类的平均售价AVG(sale_price)的
Select product_id,product_name,sale_price FROM product AS table1
WHERE sale_price > (SELECT AVG(sale_price) FROM product AS table2 WHERE table1.product_type = table2.product_type);