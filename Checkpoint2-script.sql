INSERT INTO membership
(m_membershipkey, m_name, m_annualfee, m_description)
VALUES
(1, 'Gold Star', 65.00, 'Standard personal membership'),
(2, 'Executive', 130.00, 'Premium membership with additional benefits'),
(3, 'Business', 65.00, 'Membership intended for business customers');

INSERT INTO warehouse
(w_warehousekey, w_address, w_comment)
VALUES
(1, '100 Main St', 'Central warehouse'),
(2, '250 Oak Ave', 'North warehouse'),
(3, '500 Market Rd', 'South warehouse'),
(4, '725 Commerce Dr', 'Regional warehouse');

INSERT INTO product
(p_partkey, p_name, p_mfgr, p_brand, p_type, p_retailprice, p_comment)
VALUES
(101, 'Paper Towels', 'Kirkland', 'Kirkland', 'Household', 24.99, '12-pack'),
(102, 'Bottled Water', 'Kirkland', 'Kirkland', 'Beverage', 4.99, '40-pack'),
(103, 'Organic Bananas', 'Fresh Farms', 'FreshFarm', 'Produce', 2.49, 'Organic'),
(104, '65 Inch Television', 'Samsung', 'Samsung', 'Electronics', 649.99, '4K UHD'),
(105, 'Laundry Detergent', 'Procter Gamble', 'Tide', 'Household', 21.99, 'Liquid'),
(106, 'Roasted Chicken', 'CostlyCo Foods', 'CostlyCo', 'Prepared Food', 5.99, 'Hot food'),
(107, 'Laptop Computer', 'Lenovo', 'Lenovo', 'Electronics', 799.99, '15 inch'),
(108, 'Olive Oil', 'Kirkland', 'Kirkland', 'Grocery', 19.99, 'Extra virgin'),
(109, 'Office Chair', 'OfficeWorks', 'WorkPro', 'Furniture', 149.99, 'Mesh chair'),
(110, 'Coffee Beans', 'Star Coffee', 'StarCoffee', 'Grocery', 16.99, 'Dark roast');

INSERT INTO supplier
(s_suppkey, s_name, s_address, s_phone, s_acctbal, s_comment)
VALUES
(201, 'Pacific Goods Co', '10 Supply Way', '2095551001', 1200.00, 'General goods supplier'),
(202, 'Fresh Farms LLC', '50 Orchard Rd', '2095551002', 800.00, 'Produce supplier'),
(203, 'TechSource Inc', '900 Tech Blvd', '2095551003', 5500.00, 'Electronics supplier'),
(204, 'Home Supply Corp', '75 Industrial Dr', '2095551004', 2100.00, 'Household supplier'),
(205, 'Food Distribution Co', '300 Food Ave', '2095551005', 1750.00, 'Food supplier'),
(206, 'Office Wholesale', '610 Business Ln', '2095551006', 950.00, 'Furniture supplier');

INSERT INTO customer
(c_custkey, c_name, c_address, c_phone,
 c_membershipkey, c_acctbal, c_mktsegment, c_comment)
VALUES
(1001, 'Alice Smith', '12 Pine St', '2095552001', 1, 0.00, 'HOUSEHOLD', 'Regular customer'),
(1002, 'Bob Johnson', '34 Lake Ave', '2095552002', 2, 20.00, 'HOUSEHOLD', 'Executive member'),
(1003, 'Carla Gomez', '56 Cedar Rd', '2095552003', 1, 0.00, 'HOUSEHOLD', 'New member'),
(1004, 'Delta Office LLC', '88 Commerce St', '2095552004', 3, 200.00, 'BUSINESS', 'Business account'),
(1005, 'Ethan Lee', '90 Hill Dr', '2095552005', 2, 10.00, 'HOUSEHOLD', 'Frequent shopper'),
(1006, 'Fresh Cafe LLC', '44 Market St', '2095552006', 3, 350.00, 'BUSINESS', 'Restaurant customer');

INSERT INTO productsupply
(ps_prodkey, ps_suppkey, ps_availqty, ps_resuppcost, ps_comment)
VALUES
(101, 201, 500, 17.00, 'Primary paper supplier'),
(101, 204, 250, 18.25, 'Backup paper supplier'),

(102, 201, 900, 2.50, 'Bulk water supply'),
(102, 205, 600, 2.75, 'Secondary water supplier'),

(103, 202, 400, 1.25, 'Fresh produce'),

(104, 203, 75, 500.00, 'Television supplier'),

(105, 204, 300, 14.50, 'Detergent supplier'),

(106, 205, 200, 3.00, 'Prepared food ingredients'),

(107, 203, 100, 620.00, 'Laptop supplier'),

(108, 201, 350, 12.00, 'Imported olive oil'),
(108, 205, 200, 12.75, 'Secondary olive oil supply'),

(109, 206, 120, 95.00, 'Office furniture'),

(110, 205, 500, 10.00, 'Coffee supplier');

INSERT INTO productstock
(st_prodkey, st_warehousekey, st_quantity)
VALUES
(101, 1, 150),
(101, 2, 80),
(101, 3, 120),

(102, 1, 300),
(102, 2, 250),
(102, 4, 180),

(103, 1, 75),
(103, 3, 60),

(104, 1, 15),
(104, 2, 8),

(105, 1, 90),
(105, 2, 65),
(105, 4, 40),

(106, 1, 45),
(106, 3, 35),

(107, 2, 12),
(107, 4, 20),

(108, 1, 85),
(108, 3, 75),

(109, 2, 30),
(109, 4, 25),

(110, 1, 100),
(110, 2, 70),
(110, 3, 90);

INSERT INTO sales
(s_orderkey, s_custkey, s_warehousekey,
 s_orderstatus, s_totalprice, s_orderdate,
 s_orderpriority, s_clerk, s_comment)
VALUES
(5001, 1001, 1, 'C', 59.97, '2026-09-01', 'Normal', 'Clerk01', 'Completed purchase'),
(5002, 1002, 1, 'C', 654.98, '2026-09-03', 'High', 'Clerk02', 'Electronics purchase'),
(5003, 1003, 2, 'C', 46.97, '2026-09-05', 'Normal', 'Clerk03', 'Household purchase'),
(5004, 1004, 2, 'C', 449.97, '2026-09-07', 'High', 'Clerk03', 'Business purchase'),
(5005, 1005, 3, 'P', 42.97, '2026-09-10', 'Normal', 'Clerk04', 'Pending order'),
(5006, 1006, 3, 'C', 122.40, '2026-09-12', 'High', 'Clerk05', 'Food purchase'),
(5007, 1002, 4, 'C', 799.99, '2026-09-15', 'High', 'Clerk06', 'Laptop purchase'),
(5008, 1001, 1, 'C', 41.98, '2026-09-20', 'Normal', 'Clerk01', 'Repeat customer'),
(5009, 1004, 4, 'P', 299.98, '2026-09-22', 'Normal', 'Clerk06', 'Office furniture'),
(5010, 1005, 2, 'C', 53.97, '2026-09-25', 'Normal', 'Clerk02', 'Grocery purchase');

INSERT INTO saleitems
(si_orderkey, si_prodkey, si_quantity,
 si_unitprice, si_extendedprice, si_comment)
VALUES
-- Order 5001
(5001, 101, 2, 24.99, 49.98, 'Paper towels'),
(5001, 102, 2, 4.99, 9.98, 'Water'),

-- Order 5002
(5002, 104, 1, 649.99, 649.99, 'Television'),
(5002, 102, 1, 4.99, 4.99, 'Water'),

-- Order 5003
(5003, 105, 2, 21.99, 43.98, 'Detergent'),
(5003, 103, 1, 2.99, 2.99, 'Bananas'),

-- Order 5004
(5004, 109, 3, 149.99, 449.97, 'Office chairs'),

-- Order 5005
(5005, 108, 1, 19.99, 19.99, 'Olive oil'),
(5005, 105, 1, 21.99, 21.99, 'Detergent'),

-- Order 5006
(5006, 106, 10, 5.99, 59.90, 'Roasted chicken'),
(5006, 102, 5, 4.99, 24.95, 'Water'),
(5006, 110, 2, 18.75, 37.55, 'Coffee'),

-- Order 5007
(5007, 107, 1, 799.99, 799.99, 'Laptop'),

-- Order 5008
(5008, 101, 1, 24.99, 24.99, 'Paper towels'),
(5008, 110, 1, 16.99, 16.99, 'Coffee'),

-- Order 5009
(5009, 109, 2, 149.99, 299.98, 'Office chairs'),

-- Order 5010
(5010, 110, 2, 16.99, 33.98, 'Coffee'),
(5010, 108, 1, 19.99, 19.99, 'Olive oil');

-- 1
SELECT * FROM product;

-- 2
SELECT * FROM customer;

-- 3
SELECT p_name, p_retailprice
FROM product
WHERE p_retailprice > 20;

-- 4
SELECT p_name, p_retailprice
FROM product
ORDER BY p_retailprice DESC;

-- 5
SELECT c.c_name, m.m_name
FROM customer c
JOIN membership m
    ON c.c_membershipkey = m.m_membershipkey;

-- 6
SELECT s.s_orderkey, c.c_name, s.s_totalprice
FROM sales s
JOIN customer c
    ON s.s_custkey = c.c_custkey;

-- 7
SELECT s.s_orderkey, w.w_address
FROM sales s
JOIN warehouse w
    ON s.s_warehousekey = w.w_warehousekey;

-- 8
SELECT p.p_name, ps.st_quantity, w.w_address
FROM productstock ps
JOIN product p
    ON ps.st_prodkey = p.p_partkey
JOIN warehouse w
    ON ps.st_warehousekey = w.w_warehousekey;

-- 9
SELECT p.p_name, s.s_name
FROM productsupply ps
JOIN product p
    ON ps.ps_prodkey = p.p_partkey
JOIN supplier s
    ON ps.ps_suppkey = s.s_suppkey;

-- 10
SELECT p.p_name, SUM(ps.st_quantity) AS total_stock
FROM product p
JOIN productstock ps
    ON p.p_partkey = ps.st_prodkey
GROUP BY p.p_partkey, p.p_name;

-- 11
SELECT c.c_name, SUM(s.s_totalprice) AS amount_spent
FROM customer c
JOIN sales s
    ON c.c_custkey = s.s_custkey
GROUP BY c.c_custkey, c.c_name;

-- 12
SELECT w.w_address, SUM(s.s_totalprice) AS revenue
FROM warehouse w
JOIN sales s
    ON w.w_warehousekey = s.s_warehousekey
GROUP BY w.w_warehousekey, w.w_address;

-- 13
SELECT p.p_name, COUNT(ps.ps_suppkey) AS supplier_count
FROM product p
JOIN productsupply ps
    ON p.p_partkey = ps.ps_prodkey
GROUP BY p.p_partkey, p.p_name
HAVING COUNT(ps.ps_suppkey) > 1;

-- 14
SELECT p.p_name
FROM product p
LEFT JOIN saleitems si
    ON p.p_partkey = si.si_prodkey
WHERE si.si_prodkey IS NULL;

-- 15
SELECT AVG(p_retailprice) AS average_product_price
FROM product;

-- 16
SELECT MAX(p_retailprice) AS most_expensive
FROM product;

-- 17
SELECT MIN(p_retailprice) AS least_expensive
FROM product;

-- 18
SELECT COUNT(*) AS customer_count
FROM customer;

-- 19
SELECT *
FROM productstock
WHERE st_quantity < 20;

-- 20
SELECT si.si_orderkey,
       SUM(si.si_quantity * si.si_unitprice) AS calculated_total
FROM saleitems si
GROUP BY si.si_orderkey;

-- 21
INSERT INTO membership
VALUES (3, 'Executive', 130.00, 'Executive membership');

-- 22
INSERT INTO warehouse
VALUES (3, '300 Warehouse Road', 'New warehouse');

-- 23
INSERT INTO product
VALUES (
    900,
    'Bottled Water',
    'Kirkland',
    'Kirkland',
    'Beverage',
    4.99,
    '40-pack'
);

-- 24
INSERT INTO supplier
VALUES (
    50,
    'Water Supply Co',
    '500 Supplier St',
    '2095559000',
    0.00,
    'Water supplier'
);

-- 25
INSERT INTO productsupply
VALUES (900, 50, 500, 3.00, 'Primary supplier');

-- 26
INSERT INTO productstock
VALUES (900, 3, 200);

-- 27
UPDATE product
SET p_retailprice = 5.49
WHERE p_partkey = 900;

-- 28
UPDATE productstock
SET st_quantity = st_quantity + 100
WHERE st_prodkey = 900
  AND st_warehousekey = 3;

-- 29
UPDATE customer
SET c_membershipkey = 3
WHERE c_custkey = 1001;

-- 30
UPDATE sales
SET s_orderstatus = 'C'
WHERE s_orderkey = 10001;

-- 31
DELETE FROM productstock
WHERE st_prodkey = 900
  AND st_warehousekey = 3;

-- 32
DELETE FROM productsupply
WHERE ps_prodkey = 900
  AND ps_suppkey = 50;