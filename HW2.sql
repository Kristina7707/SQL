USE hw2;
DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
 (
    id INT NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    amount INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO sales (order_date, amount)
VALUES
  ("2022-01-01",156),
  ("2022-01-02",180),
  ("2022-01-03",21),
  ("2022-01-04",124),
  ("2023-01-05",341); 
  
  SELECT id, order_date, amount,
CASE TRUE
    WHEN amount < 100 THEN 'МАЛЕНЬКИЙ ЗАКАЗ'
    WHEN amount >= 100 AND amount <= 300 THEN 'СРЕДНИЙ ЗАКАЗ'
    ELSE 'БОЛЬШОЙ ЗАКАЗ'
END AS order_size
FROM sales;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders 
	(
    orderid INT NOT NULL AUTO_INCREMENT,
    employeeid VARCHAR(5) NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    orderstatus VARCHAR(45) NOT NULL,
    PRIMARY KEY (orderid)
    );

INSERT INTO orders (employeeid, amount, orderstatus)
VALUES
("e03",15.00,"OPEN"),
  ("e01",25.50,"OPEN"),
  ("e05",100.70,"CLOSED"),
  ("e02",22.18,"OPEN"),
  ("e04",9.50,"CANCELLED");
  
SELECT orderid, orderstatus,
CASE orderstatus
    WHEN "OPEN" THEN 'Order is in open state.'
    WHEN "CLOSED" THEN 'Order is closed.'
    ELSE 'Order is cancelled.'
END AS order_summary
FROM orders;