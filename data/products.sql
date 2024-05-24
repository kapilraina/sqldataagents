--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-05-24 11:19:41 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16591)
-- Name: products; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.products (
    product_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    category character varying(50),
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);


ALTER TABLE sales.products OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16590)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.products_product_id_seq OWNED BY sales.products.product_id;


--
-- TOC entry 3219 (class 2604 OID 16594)
-- Name: products product_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.products ALTER COLUMN product_id SET DEFAULT nextval('sales.products_product_id_seq'::regclass);


--
-- TOC entry 3366 (class 0 OID 16591)
-- Dependencies: 218
-- Data for Name: products; Type: TABLE DATA; Schema: sales; Owner: postgres
--

INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1001, 'Laptop Pro 15"', 'Electronics', 1299.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1002, 'Smartphone X', 'Electronics', 899.99, 150);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1003, 'Bluetooth Headphones', 'Accessories', 199.99, 200);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1004, '4K Television', 'Electronics', 999.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1005, 'Gaming Console', 'Entertainment', 499.99, 80);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1006, 'Electric Kettle', 'Home Appliances', 39.99, 120);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1007, 'Smart Watch', 'Accessories', 249.99, 75);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1008, 'Espresso Machine', 'Home Appliances', 199.99, 45);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1009, 'Portable Speaker', 'Audio', 129.99, 110);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1010, 'Digital Camera', 'Photography', 649.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1011, 'Smart Light Bulb', 'Home Appliances', 19.99, 200);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1012, 'Tablet 10"', 'Electronics', 399.99, 90);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1013, 'Fitness Tracker', 'Accessories', 149.99, 130);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1014, 'Smart Thermostat', 'Home Appliances', 199.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1015, 'Noise Cancelling Headphones', 'Accessories', 299.99, 85);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1016, 'Smart Doorbell', 'Home Appliances', 129.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1017, 'Gaming Mouse', 'Accessories', 59.99, 140);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1018, 'Wireless Keyboard', 'Accessories', 79.99, 120);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1019, 'Bluetooth Speaker', 'Audio', 99.99, 150);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1020, 'Smart Vacuum', 'Home Appliances', 299.99, 35);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1021, 'Gaming Laptop', 'Electronics', 1499.99, 25);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1022, 'Desktop Monitor 27"', 'Electronics', 329.99, 55);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1023, 'External Hard Drive', 'Accessories', 89.99, 95);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1024, 'Streaming Device', 'Entertainment', 49.99, 180);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1025, 'Smart Home Hub', 'Home Appliances', 129.99, 65);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1026, 'Robot Vacuum', 'Home Appliances', 499.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1027, 'Coffee Maker', 'Home Appliances', 79.99, 110);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1028, 'Air Fryer', 'Home Appliances', 99.99, 95);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1029, 'Electric Toothbrush', 'Accessories', 49.99, 100);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1030, 'Digital Picture Frame', 'Accessories', 79.99, 80);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1031, 'Wireless Earbuds', 'Accessories', 129.99, 120);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1032, 'Smart Scale', 'Accessories', 59.99, 90);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1033, 'Instant Camera', 'Photography', 89.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1034, 'Smart Plug', 'Home Appliances', 29.99, 140);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1035, 'Portable Charger', 'Accessories', 49.99, 150);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1036, 'Smart Lock', 'Home Appliances', 179.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1037, 'Electric Shaver', 'Accessories', 59.99, 80);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1038, 'Action Camera', 'Photography', 199.99, 45);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1039, 'Smart Pet Feeder', 'Home Appliances', 149.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1040, 'Smartphone Gimbal', 'Photography', 99.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1041, '3D Printer', 'Electronics', 299.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1042, 'Drone', 'Electronics', 499.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1043, 'Electric Scooter', 'Electronics', 599.99, 25);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1044, 'Video Doorbell', 'Home Appliances', 199.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1045, 'Smart Bedside Lamp', 'Home Appliances', 49.99, 80);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1046, 'Smart Air Purifier', 'Home Appliances', 199.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1047, 'VR Headset', 'Entertainment', 399.99, 25);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1048, 'Smart Glasses', 'Electronics', 299.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1049, 'Electric Bike', 'Electronics', 999.99, 15);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1050, 'Smart Mirror', 'Home Appliances', 299.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1051, 'Security Camera', 'Home Appliances', 99.99, 100);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1052, 'Wireless Router', 'Electronics', 149.99, 75);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1053, 'Smart Bulb', 'Home Appliances', 19.99, 200);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1054, 'Electric Blanket', 'Home Appliances', 49.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1055, 'Smart Fridge', 'Home Appliances', 999.99, 10);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1056, 'Sous Vide Cooker', 'Home Appliances', 129.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1057, 'Water Filter', 'Home Appliances', 39.99, 90);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1058, 'Smart Pressure Cooker', 'Home Appliances', 149.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1059, 'Smart Trash Can', 'Home Appliances', 79.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1060, 'Smart Toaster', 'Home Appliances', 59.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1061, 'Smart Water Bottle', 'Accessories', 49.99, 80);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1062, 'Electric Skillet', 'Home Appliances', 59.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1063, 'Smart Weighing Scale', 'Accessories', 59.99, 90);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1064, 'Electric Iron', 'Home Appliances', 49.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1065, 'Smart Diffuser', 'Home Appliances', 39.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1066, 'Wireless Mouse', 'Accessories', 29.99, 120);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1067, 'Smart Alarm Clock', 'Accessories', 59.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1068, 'Smart Fan', 'Home Appliances', 79.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1069, 'Portable Air Conditioner', 'Home Appliances', 299.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1070, 'Electric Pressure Washer', 'Home Appliances', 129.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1071, 'Smart Bike Helmet', 'Accessories', 99.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1072, 'Smart Sprinkler', 'Home Appliances', 199.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1073, 'Electric Grill', 'Home Appliances', 99.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1074, 'Smart Meat Thermometer', 'Accessories', 49.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1075, 'Electric Wine Opener', 'Accessories', 29.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1076, 'Smart Garage Door Opener', 'Home Appliances', 199.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1077, 'Electric Toothbrush', 'Accessories', 49.99, 100);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1078, 'Electric Lawn Mower', 'Home Appliances', 299.99, 15);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1079, 'Smart Thermos', 'Accessories', 39.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1080, 'Electric Drill', 'Home Appliances', 79.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1081, 'Smart Lamp', 'Home Appliances', 59.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1082, 'Portable Power Bank', 'Accessories', 39.99, 100);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1083, 'Electric Paint Sprayer', 'Home Appliances', 99.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1084, 'Smart Speaker', 'Audio', 199.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1085, 'Electric Fireplace', 'Home Appliances', 299.99, 10);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1086, 'Electric Car Charger', 'Electronics', 499.99, 15);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1087, 'Smart Light Switch', 'Home Appliances', 29.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1088, 'Smart Home Security System', 'Home Appliances', 399.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1089, 'Smart Thermostat', 'Home Appliances', 199.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1090, 'Wireless Charger', 'Accessories', 59.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1091, 'Electric Foot Massager', 'Home Appliances', 79.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1092, 'Smart Home Camera', 'Home Appliances', 99.99, 100);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1093, 'Electric Blanket', 'Home Appliances', 49.99, 70);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1094, 'Portable Projector', 'Entertainment', 299.99, 20);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1095, 'Smart Water Leak Detector', 'Home Appliances', 49.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1096, 'Electric Pasta Maker', 'Home Appliances', 99.99, 30);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1097, 'Smart Thermos', 'Accessories', 39.99, 50);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1098, 'Heated Travel Mug', 'Accessories', 34.99, 40);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1099, 'Smart Yoga Mat', 'Accessories', 79.99, 60);
INSERT INTO sales.products (product_id, product_name, category, price, stock_quantity) VALUES (1100, 'Automatic Pet Feeder', 'Home Appliances', 199.99, 45);


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.products_product_id_seq', 10, true);


--
-- TOC entry 3221 (class 2606 OID 16596)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


-- Completed on 2024-05-24 11:19:41 IST

--
-- PostgreSQL database dump complete
--

