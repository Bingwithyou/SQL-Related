# 2.1 选出登记日期在2009年4月28日之后的商品
# SELECT product_name, regist_date FROM Product WHERE regist_date > "2009-04-28";

# 2.2 三条语句都包含了对 NULL 的逻辑运算符，无法获得查询结果

# 2.3 两种写法查询出 sale_price 比 purchase_price 高出 500 日元或以上的商品
# SELECT product_name, sale_price, purchase_price FROM Product WHERE (sale_price - purchase_price) >= 500;
# 第二种写法：第一条的判断条件反过来，结果相同
# SELECT product_name, sale_price, purchase_price FROM Product WHERE (purchase_price - sale_price) <= -500;

# 2.4 查询出 sale_price 九折 之后利润高于 100 的 办公用品 和 厨房用具
# SELECT product_name, product_type, sale_price, purchase_price FROM Product WHERE (sale_price * 0.9) - purchase_price > 100;

