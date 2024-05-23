-- Insert 10 records into the products table with real product names
INSERT INTO products (product_name, category, price, stock_quantity) VALUES
    ('iPhone 13 Pro', 'Smartphones', 999.99, 50),
    ('Samsung Galaxy Z Fold 3', 'Smartphones', 1799.99, 30),
    ('Dell XPS 15 9510 Laptop', 'Laptops', 1599.99, 25),
    ('Sony 65" 4K OLED A90J TV', 'Televisions', 3499.99, 10),
    ('Bose QuietComfort 45 Headphones', 'Headphones', 329.99, 100),
    ('Amazon Echo Show 10 (3rd Gen)', 'Smart Home', 249.99, 200),
    ('KitchenAid Artisan Stand Mixer', 'Kitchen Appliances', 399.99, 20),
    ('Cuisinart Grind & Brew 12-Cup Coffee Maker', 'Coffee Makers', 129.99, 50),
    ('Instant Pot Duo Evo Plus 6-Quart', 'Cookware', 119.99, 30),
    ('Ninja Foodi 8-Quart 9-in-1 Pressure Cooker', 'Kitchen Appliances', 219.99, 40);

-- Insert 10 records into the customers table with real names
INSERT INTO customers (first_name, last_name, email, phone, address) VALUES
    ('John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Main St, Anytown, USA'),
    ('Jane', 'Smith', 'janesmith@example.com', '987-654-3210', '456 Elm St, Othertown, USA'),
    ('Alice', 'Johnson', 'alicejohnson@example.com', '555-123-4567', '789 Oak St, Yetanothertown, USA'),
    ('Bob', 'Brown', 'bobbrown@example.com', '321-654-9870', '321 Pine St, Somewhere, USA'),
    ('Emily', 'Davis', 'emilydavis@example.com', '777-888-9999', '999 Cedar St, Anywhere, USA'),
    ('Michael', 'Wilson', 'michaelwilson@example.com', '111-222-3333', '222 Maple St, Nowhere, USA'),
    ('Sarah', 'Martinez', 'sarahmartinez@example.com', '444-555-6666', '555 Birch St, Nowheretown, USA'),
    ('David', 'Anderson', 'davidanderson@example.com', '777-999-1111', '777 Walnut St, Yetanotherplace, USA'),
    ('Jessica', 'Taylor', 'jessicataylor@example.com', '888-777-6666', '666 Cherry St, Yetanotherplace, USA'),
    ('Christopher', 'Garcia', 'christophergarcia@example.com', '222-333-4444', '333 Peach St, Anytown, USA');

-- Insert 10 records into the orders table with real order data
INSERT INTO orders (customer_id, total_amount) VALUES
    (1, 1499.98),
    (2, 3299.97),
    (3, 249.99),
    (4, 4299.97),
    (5, 159.98),
    (6, 449.97),
    (7, 399.98),
    (8, 219.97),
    (9, 479.97),
    (10, 1099.97);

-- Insert 20 records into the order_details table with real order details
INSERT INTO order_details (order_id, product_id, quantity, unit_price, total_price) VALUES
    (1, 1, 2, 999.99, 1999.98),
    (2, 2, 1, 1799.99, 1799.99),
    (3, 3, 1, 1599.99, 1599.99),
    (4, 4, 1, 3499.99, 3499.99),
    (5, 5, 1, 329.99, 329.99),
    (6, 6, 3, 249.99, 749.97),
    (7, 7, 1, 399.99, 399.99),
    (8, 8, 2, 129.99, 259.98),
    (9, 9, 4, 119.99, 479.96),
    (10, 10, 1, 219.99, 219.99),
    (1, 3, 1, 1599.99, 1599.99),
    (2, 4, 2, 3499.99, 6999.98),
    (3, 5, 2, 329.99, 659.98),
    (4, 6, 1, 249.99, 249.99),
    (5, 7, 1, 399.99, 399.99),
    (6, 8, 3, 129.99, 389.97),
    (7, 9, 1, 119.99, 119.99),
    (8, 10, 2, 219.99, 439.98),
    (9, 1, 4, 999.99, 3999.96),
    (10, 2, 1, 1799.99, 1799.99);
