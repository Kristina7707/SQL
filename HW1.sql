SELECT * FROM hw1.mobile_phone;

INSERT mobile_phone
(
idmobile_phone, ProductName, Manufacturer, ProductCount, Price
)
VALUES
(1, "iPhoneX", "Apple", "3", "76000"),
(2, "iPhone 8", "Apple", "2", "51000"),
(3, "Galaxy S9", "Samsung", "2", "56000"),
(4, "Galaxy S8", "Samsung", "1", "41000"),
(5, "P20 Pro", "Huawei", "5", "36000");


SELECT * FROM mobile_phone
WHERE ProductCount > "2";

SELECT * FROM mobile_phone
WHERE Manufacturer = "Samsung";

