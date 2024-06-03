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


CREATE SCHEMA IF NOT EXISTS sales
    AUTHORIZATION postgres;

GRANT ALL ON SCHEMA sales TO postgres;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA sales
GRANT ALL ON TABLES TO postgres;


CREATE TABLE sales.products (
    product_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    category character varying(50),
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);


ALTER TABLE sales.products OWNER TO postgres;


CREATE SEQUENCE sales.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.products_product_id_seq OWNER TO postgres;


ALTER SEQUENCE sales.products_product_id_seq OWNED BY sales.products.product_id;


ALTER TABLE ONLY sales.products ALTER COLUMN product_id SET DEFAULT nextval('sales.products_product_id_seq'::regclass);



CREATE TABLE sales.customers (
    customer_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100),
    address character varying(255)
);


ALTER TABLE sales.customers OWNER TO postgres;


CREATE SEQUENCE sales.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.customers_customer_id_seq OWNER TO postgres;


ALTER SEQUENCE sales.customers_customer_id_seq OWNED BY sales.customers.customer_id;


ALTER TABLE ONLY sales.customers ALTER COLUMN customer_id SET DEFAULT nextval('sales.customers_customer_id_seq'::regclass);



CREATE TABLE sales.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    total_amount numeric(10,2) NOT NULL
);


ALTER TABLE sales.orders OWNER TO postgres;



CREATE SEQUENCE sales.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.orders_order_id_seq OWNER TO postgres;


ALTER SEQUENCE sales.orders_order_id_seq OWNED BY sales.orders.order_id;


ALTER TABLE ONLY sales.orders ALTER COLUMN order_id SET DEFAULT nextval('sales.orders_order_id_seq'::regclass);


CREATE TABLE sales.order_details (
    order_detail_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    total_price numeric(10,2) NOT NULL
);


ALTER TABLE sales.order_details OWNER TO postgres;


CREATE SEQUENCE sales.order_details_order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.order_details_order_detail_id_seq OWNER TO postgres;


ALTER SEQUENCE sales.order_details_order_detail_id_seq OWNED BY sales.order_details.order_detail_id;


ALTER TABLE ONLY sales.order_details ALTER COLUMN order_detail_id SET DEFAULT nextval('sales.order_details_order_detail_id_seq'::regclass);

