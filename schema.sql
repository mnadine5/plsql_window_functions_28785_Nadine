CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    location VARCHAR2(50)
);

CREATE TABLE Medicines (
    medicine_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    category VARCHAR2(50),
    price NUMBER(10, 2)
);

CREATE TABLE Sales (
    sale_id NUMBER PRIMARY KEY,
    customer_id NUMBER REFERENCES Customers(customer_id),
    medicine_id NUMBER REFERENCES Medicines(medicine_id),
    sale_date DATE,
    quantity NUMBER,
    total_amount NUMBER(10, 2)
);

INSERT INTO Customers (customer_id,name, location) VALUES (1,'John Doe', 'Kigali');
INSERT INTO Customers (customer_id,name, location) VALUES (2,'Jane Smith', 'Kigali');
INSERT INTO Customers (customer_id,name, location) VALUES (3,'Alice Johnson', 'Musanze');
INSERT INTO Customers (customer_id,name, location) VALUES (4,'Bob Brown', 'Musanze');
INSERT INTO Customers (customer_id,name, location) VALUES (5,'Charlie Davis', 'Huye');

INSERT INTO Medicines (medicine_id ,name, category, price) VALUES (1,'Paracetamol', 'Painkillers', 5.00);
INSERT INTO Medicines (medicine_id ,name, category, price) VALUES (2,'Amoxicillin', 'Antibiotics', 15.00);
INSERT INTO Medicines (medicine_id ,name, category, price) VALUES (3,'Ibuprofen', 'Painkillers', 8.00);
INSERT INTO Medicines (medicine_id ,name, category, price) VALUES (4,'Aspirin', 'Painkillers', 4.00);
INSERT INTO Medicines (medicine_id ,name, category, price) VALUES (5,'Insulin', 'Diabetes', 50.00);


INSERT INTO Sales (sale_id ,customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (1,1, 1, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 2, 10.00);
INSERT INTO Sales (sale_id ,customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (2,2, 2, TO_DATE('2025-01-20', 'YYYY-MM-DD'), 1, 15.00);
INSERT INTO Sales (sale_id ,customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (3,3, 3, TO_DATE('2025-02-10', 'YYYY-MM-DD'), 3, 24.00);
INSERT INTO Sales (sale_id ,customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (4,4, 1, TO_DATE('2025-02-15', 'YYYY-MM-DD'), 1, 5.00);
INSERT INTO Sales (sale_id ,customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (5,5, 4, TO_DATE('2025-03-05', 'YYYY-MM-DD'), 2, 20.00);
