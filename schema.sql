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

INSERT INTO Customers (name, location) VALUES ('John Doe', 'Kigali');
INSERT INTO Customers (name, location) VALUES ('Jane Smith', 'Kigali');
INSERT INTO Customers (name, location) VALUES ('Alice Johnson', 'Musanze');
INSERT INTO Customers (name, location) VALUES ('Bob Brown', 'Musanze');
INSERT INTO Customers (name, location) VALUES ('Charlie Davis', 'Huye');

INSERT INTO Medicines (name, category, price) VALUES ('Paracetamol', 'Painkillers', 5.00);
INSERT INTO Medicines (name, category, price) VALUES ('Amoxicillin', 'Antibiotics', 15.00);
INSERT INTO Medicines (name, category, price) VALUES ('Ibuprofen', 'Painkillers', 8.00);
INSERT INTO Medicines (name, category, price) VALUES ('Aspirin', 'Painkillers', 4.00);
INSERT INTO Medicines (name, category, price) VALUES ('Insulin', 'Diabetes', 50.00);


INSERT INTO Sales (customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (1, 1, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 2, 10.00);
INSERT INTO Sales (customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (2, 2, TO_DATE('2025-01-20', 'YYYY-MM-DD'), 1, 15.00);
INSERT INTO Sales (customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (3, 3, TO_DATE('2025-02-10', 'YYYY-MM-DD'), 3, 24.00);
INSERT INTO Sales (customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (4, 1, TO_DATE('2025-02-15', 'YYYY-MM-DD'), 1, 5.00);
INSERT INTO Sales (customer_id, medicine_id, sale_date, quantity, total_amount) VALUES (5, 4, TO_DATE('2025-03-05', 'YYYY-MM-DD'), 2, 20.00);
