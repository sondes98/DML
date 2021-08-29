CREATE TABLE Product(
    Product_id VARCHAR(20) CONSTRAINT pk_Product PRIMARY KEY,
    Product_Name VARCHAR(20)NOT NULL,
    Price Number  CHECK (Price > 0) 
);

CREATE TABLE Customer(
    Customer_id VARCHAR(20) CONSTRAINT pk_Customer PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel Number,
);

CREATE TABLE Orders(
    Customer_id VARCHAR(20) ,
    Product_id VARCHAR(20) ,
    Quantity Number,
    Total_Amount Number,
    CONSTRAINT fk_Orders FOREIGN KEY (Customer_id) REFERENCES Orders (Customer_id),
    CONSTRAINT fk_Orders FOREIGN KEY (Product_id) REFERENCES Orders (Product_id),
);


ALTER TABLE Product
    ADD Category VARCHAR2(20);

ALTER TABLE Oders
    ADD OrderDate date DEFAULT GETDATE();



INSERT INTO Product (Product_id, Product_Name, Category, Price)
VALUES 
    ('P01', 'Samsung Galaxy S20', 'Smartphone', '3299'),
    ('P02', 'ASUS Notebook', 'PC', '4599');

INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel)
VALUES 
    ('C01', 'ALI', '71321009'),
    ('C02', 'ASMA', '77345823');

INSERT INTO Orders (Customer_id, Product_id, OrderDate, Quantity, Total_Amount)
VALUES 
    ('C01', 'P02', 'NULL', '2', '9198'),
    ('C02', 'P01', '28/05/2020', '1', '3299');