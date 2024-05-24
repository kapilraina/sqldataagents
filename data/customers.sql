--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-05-24 11:17:22 IST

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
-- TOC entry 220 (class 1259 OID 16598)
-- Name: customers; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.customers (
    customer_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100),
    address character varying(255)
);


ALTER TABLE sales.customers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16597)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 219
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.customers_customer_id_seq OWNED BY sales.customers.customer_id;


--
-- TOC entry 3219 (class 2604 OID 16601)
-- Name: customers customer_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers ALTER COLUMN customer_id SET DEFAULT nextval('sales.customers_customer_id_seq'::regclass);


--
-- TOC entry 3368 (class 0 OID 16598)
-- Dependencies: 220
-- Data for Name: customers; Type: TABLE DATA; Schema: sales; Owner: postgres
--

INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2001, 'Allison', 'Burnett', 'jessicarobinson@gmail.com', '+1-891-418-4340x89699', 'Unit 6158 Box 4389, DPO AA 79904');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2002, 'Lindsay', 'Jones', 'gaineslindsay@sexton.org', '1662568120', '6498 Collins Shoals Apt. 206, Lake Kenneth, UT 64354');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2003, 'Kathryn', 'Martinez', 'alvinbrock@guzman.com', '922.539.0830x2488', '872 Kathleen River, Rebeccamouth, DC 95778');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2004, 'Bryan', 'Smith', 'sarah01@king-davis.net', '551-338-5830x87793', '655 Gonzalez Landing Suite 791, Ryanport, AK 31217');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2005, 'Michele', 'Smith', 'brownpaul@gmail.com', '(086)076-3735x5156', '1228 Green Port Suite 358, Calebport, IN 35952');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2006, 'Michelle', 'Forbes', 'michael90@gmail.com', '(669)832-2647', '0467 Ramsey Ferry, North Paulachester, MD 46138');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2007, 'Shannon', 'Berg', 'travis42@yahoo.com', '+1-739-486-1659', '85286 Richard Union, Lake Travis, MA 56239');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2008, 'Sheila', 'Woods', 'carriethomas@gmail.com', '483.587.6154x40515', '01378 Cody Village, South Erin, MA 80870');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2009, 'Jamie', 'Rubio', 'warddavid@hotmail.com', '1764285435', 'USS Hughes, FPO AA 83642');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2010, 'Christian', 'Adams', 'rubensmith@gmail.com', '001-592-694-7160', '00522 Janice Trafficway, West Roseland, NC 03268');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2011, 'Tracy', 'Erickson', 'teresa97@brown.com', '+1-922-027-8673', '12561 Reyes Trafficway, North Nicole, SD 36455');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2012, 'Michael', 'Vasquez', 'leslie82@hotmail.com', '(499)977-0746x554', '1430 Campos Locks Suite 833, Maryton, AK 16195');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2013, 'Lindsey', 'Conrad', 'terrykathryn@wilson-hawkins.info', '5182028193', '70230 Higgins Throughway, Powellside, MT 87719');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2014, 'James', 'Black', 'lfuentes@hotmail.com', '(315)484-2044x8539', 'PSC 2346, Box 2012, APO AP 94214');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2015, 'Michael', 'Simmons', 'mullenchristine@gmail.com', '796.317.8262x814', '9978 Cody Estate, Reneestad, NE 89087');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2016, 'Thomas', 'Flores', 'fsmith@hotmail.com', '(145)569-5233x1145', '66822 Yolanda Vista, South Miguelshire, KY 37363');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2017, 'Hannah', 'Hill', 'barry04@hotmail.com', '084-392-4820', '2412 Sarah Rapids Suite 468, Sharonport, SD 84328');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2018, 'Christopher', 'Lopez', 'zsimmons@hale.com', '733-320-2667x037', '099 Allison Glen, Jillmouth, DE 25192');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2019, 'Michael', 'Johnston', 'ecampbell@hotmail.com', '228.238.7780x483', '281 John Unions, New Alanstad, MN 65706');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2020, 'Darlene', 'Mcgee', 'nhoward@bishop.biz', '+1-067-605-7410x73169', '4819 Keller Mountain, Kellerville, MD 92449');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2021, 'Jonathan', 'Martinez', 'graydonald@price.org', '(550)208-1024x782', '29188 Ryan Island Apt. 781, New Kayla, WA 75757');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2022, 'Sean', 'Green', 'erichard@cook.com', '656.057.0234x314', '0129 Hall Shore Suite 241, Andersonbury, MA 48902');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2023, 'Kelly', 'Becker', 'greenlinda@yahoo.com', '581-228-7433x5640', 'Unit 1844 Box 1347, DPO AP 42954');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2024, 'Derrick', 'Walters', 'karenweeks@wilson.biz', '001-881-535-8921', '85508 Tony Plain, Loriside, NH 52478');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2025, 'Nancy', 'Lin', 'jasondouglas@randall-gonzales.com', '(200)884-1399x18137', '203 Brenda Mountains Apt. 418, Johnsonberg, TN 34478');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2026, 'Kathryn', 'Gallagher', 'plong@randall-torres.org', '358.987.9661x87426', 'PSC 3572, Box 1430, APO AP 92910');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2027, 'Krystal', 'Gordon', 'linda12@reyes-young.com', '291-411-6610x5724', '7054 Garcia Parkways, Castroton, MS 41112');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2028, 'Ashley', 'Anderson', 'micheleroach@gmail.com', '0093442767', '39832 Stacy Square, Port Larryberg, NE 35718');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2029, 'Kristy', 'Mendoza', 'robertsondiane@wyatt.com', '(248)943-7570', '58408 Patricia Light, Andreachester, NH 46306');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2030, 'Christopher', 'Francis', 'scott57@gmail.com', '8367110739', '1026 Gomez Turnpike Apt. 024, South Jeffrey, GA 68169');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2031, 'Joe', 'Soto', 'timothykane@johnson.biz', '001-550-826-1427', '9181 Heather Squares Suite 327, Lake Melissa, WY 09613');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2032, 'Wayne', 'Harrell', 'lnorris@gmail.com', '001-160-969-5110x7862', '3725 Rodriguez Stream, Riceview, NJ 95603');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2033, 'Steven', 'Ward', 'robert47@mayo.com', '+1-630-791-3285x43485', '81675 Danny Islands, South Cindytown, SC 14774');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2034, 'Kimberly', 'Bell', 'stephanielarson@hotmail.com', '926.411.0102x388', 'USNS Mendez, FPO AA 94491');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2035, 'Kelly', 'Barton', 'smithjeffrey@gmail.com', '743-273-0470', 'PSC 5876, Box 7348, APO AP 21899');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2036, 'Christina', 'Friedman', 'milesaustin@gmail.com', '+1-053-598-6132x221', '851 Shelton Causeway Suite 105, South Donna, OK 42852');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2037, 'Madison', 'Robles', 'kimberly44@glass.com', '1821257647', '4003 Parker Mill, Mooreside, CO 94634');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2038, 'Tammy', 'Clark', 'darrell14@hotmail.com', '722.756.2424', '82341 Mitchell Points, East Andre, GA 15576');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2039, 'Christy', 'Mcclain', 'ijohnson@powell.info', '109.073.8980', '13810 Audrey Bypass, Williamsshire, MN 73310');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2040, 'Brandon', 'James', 'patrick57@yahoo.com', '307.712.9194x909', '32321 Bell Haven Apt. 248, Dayhaven, VT 18960');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2041, 'Emily', 'Fowler', 'rlivingston@young-patrick.info', '001-608-879-1672x0426', '6538 David Parkways, Coxfurt, GA 71054');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2042, 'Lori', 'Martinez', 'joshuaanderson@hotmail.com', '+1-156-506-2620x6431', '79322 Fields Viaduct, South Victoriaport, AR 32579');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2043, 'Michael', 'Mitchell', 'ele@hopkins-leach.com', '943.063.1722', '74061 Crystal Harbors, Port Robertmouth, GA 38326');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2044, 'Ryan', 'Glover', 'cardenasmark@glover.com', '007.644.8863', 'Unit 0467 Box 1769, DPO AE 36123');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2045, 'Alicia', 'Thompson', 'qwatson@valentine-hickman.org', '721.414.2154x1585', '51823 Mitchell Mills, New Troy, TN 17268');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2046, 'William', 'Mora', 'mcdanieldillon@yahoo.com', '(439)876-9127', '705 Ward Pine, East Debbie, OH 67071');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2047, 'Jessica', 'Hays', 'lindawest@coleman.org', '(833)955-2988x18037', '697 Stephen Pass, Port Andreaton, MD 79876');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2048, 'Gerald', 'Rivas', 'cole29@hotmail.com', '+1-344-099-6705', '7528 Brandon Forges Suite 112, Andersonburgh, MD 66631');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2049, 'Karen', 'Brown', 'johnsoncharles@hotmail.com', '(168)094-4960', '719 Vernon Points, New Heathershire, AZ 31083');
INSERT INTO sales.customers (customer_id, first_name, last_name, email, phone, address) VALUES (2050, 'Barbara', 'Ramirez', 'iharris@gmail.com', '485-598-7118x1329', '615 Harrell Wall, Thorntonchester, NM 76100');


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 219
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.customers_customer_id_seq', 10, true);


--
-- TOC entry 3221 (class 2606 OID 16605)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 3223 (class 2606 OID 16603)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


-- Completed on 2024-05-24 11:17:22 IST

--
-- PostgreSQL database dump complete
--

