--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-05-24 11:20:31 IST

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
-- TOC entry 224 (class 1259 OID 16620)
-- Name: order_details; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.order_details (
    order_detail_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    total_price numeric(10,2) NOT NULL
);


ALTER TABLE sales.order_details OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16619)
-- Name: order_details_order_detail_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.order_details_order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.order_details_order_detail_id_seq OWNER TO postgres;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 223
-- Name: order_details_order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.order_details_order_detail_id_seq OWNED BY sales.order_details.order_detail_id;


--
-- TOC entry 3219 (class 2604 OID 16623)
-- Name: order_details order_detail_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_details ALTER COLUMN order_detail_id SET DEFAULT nextval('sales.order_details_order_detail_id_seq'::regclass);


--
-- TOC entry 3368 (class 0 OID 16620)
-- Dependencies: 224
-- Data for Name: order_details; Type: TABLE DATA; Schema: sales; Owner: postgres
--

INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4001, 3001, 1074, 3, 26.99, 80.97);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4002, 3001, 1015, 1, 40.12, 40.12);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4003, 3002, 1044, 4, 399.56, 1598.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4004, 3002, 1017, 4, 298.84, 1195.36);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4005, 3003, 1023, 1, 72.01, 72.01);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4006, 3003, 1063, 1, 271.39, 271.39);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4007, 3004, 1052, 3, 199.92, 599.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4008, 3005, 1005, 2, 107.05, 214.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4009, 3006, 1014, 1, 182.52, 182.52);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4010, 3007, 1002, 3, 464.80, 1394.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4011, 3007, 1079, 3, 193.79, 581.37);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4012, 3007, 1072, 1, 169.21, 169.21);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4013, 3008, 1036, 5, 81.41, 407.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4014, 3009, 1080, 5, 270.33, 1351.65);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4015, 3009, 1029, 3, 24.40, 73.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4016, 3009, 1089, 4, 388.68, 1554.72);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4017, 3010, 1011, 1, 314.40, 314.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4018, 3011, 1073, 4, 50.49, 201.96);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4019, 3012, 1067, 1, 194.54, 194.54);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4020, 3012, 1092, 2, 371.37, 742.74);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4021, 3012, 1031, 5, 214.48, 1072.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4022, 3013, 1063, 1, 244.21, 244.21);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4023, 3014, 1066, 1, 94.20, 94.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4024, 3014, 1053, 1, 283.25, 283.25);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4025, 3014, 1003, 3, 318.45, 955.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4026, 3015, 1070, 3, 56.18, 168.54);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4027, 3015, 1046, 3, 451.27, 1353.81);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4028, 3016, 1070, 5, 462.39, 2311.95);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4029, 3016, 1074, 1, 440.28, 440.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4030, 3016, 1098, 2, 77.10, 154.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4031, 3017, 1083, 2, 281.34, 562.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4032, 3017, 1027, 5, 43.62, 218.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4033, 3018, 1029, 4, 324.67, 1298.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4034, 3019, 1006, 3, 12.77, 38.31);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4035, 3020, 1090, 1, 17.35, 17.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4036, 3020, 1004, 5, 36.60, 183.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4037, 3021, 1069, 3, 36.25, 108.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4038, 3022, 1060, 1, 149.12, 149.12);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4039, 3022, 1089, 3, 84.03, 252.09);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4040, 3023, 1014, 4, 379.98, 1519.92);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4041, 3023, 1020, 3, 473.72, 1421.16);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4042, 3024, 1037, 2, 384.04, 768.08);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4043, 3025, 1022, 5, 291.21, 1456.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4044, 3025, 1046, 4, 107.87, 431.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4045, 3026, 1075, 3, 116.06, 348.18);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4046, 3026, 1041, 2, 288.19, 576.38);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4047, 3027, 1049, 2, 280.72, 561.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4048, 3027, 1090, 2, 409.78, 819.56);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4049, 3028, 1097, 2, 321.59, 643.18);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4050, 3029, 1066, 2, 88.25, 176.50);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4051, 3030, 1043, 4, 116.65, 466.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4052, 3030, 1026, 5, 491.16, 2455.80);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4053, 3030, 1058, 3, 254.21, 762.63);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4054, 3031, 1032, 2, 343.61, 687.22);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4055, 3031, 1078, 5, 145.63, 728.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4056, 3031, 1089, 4, 431.57, 1726.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4057, 3032, 1075, 4, 169.05, 676.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4058, 3032, 1030, 3, 147.96, 443.88);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4059, 3033, 1010, 3, 247.36, 742.08);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4060, 3033, 1049, 2, 77.31, 154.62);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4061, 3034, 1015, 3, 29.98, 89.94);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4062, 3034, 1029, 1, 171.13, 171.13);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4063, 3034, 1056, 5, 154.26, 771.30);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4064, 3035, 1016, 4, 85.87, 343.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4065, 3036, 1089, 5, 143.54, 717.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4066, 3037, 1065, 2, 173.13, 346.26);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4067, 3037, 1051, 5, 240.99, 1204.95);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4068, 3037, 1018, 1, 326.27, 326.27);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4069, 3038, 1055, 1, 460.44, 460.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4070, 3039, 1009, 2, 191.57, 383.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4071, 3039, 1012, 5, 494.95, 2474.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4072, 3040, 1088, 3, 203.81, 611.43);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4073, 3040, 1043, 2, 87.60, 175.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4074, 3041, 1015, 3, 68.87, 206.61);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4075, 3041, 1072, 5, 58.89, 294.45);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4076, 3041, 1026, 3, 191.92, 575.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4077, 3042, 1029, 5, 100.48, 502.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4078, 3043, 1066, 4, 193.09, 772.36);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4079, 3043, 1067, 1, 317.51, 317.51);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4080, 3044, 1042, 4, 323.45, 1293.80);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4081, 3045, 1049, 1, 429.90, 429.90);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4082, 3045, 1050, 2, 442.79, 885.58);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4083, 3046, 1002, 2, 436.16, 872.32);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4084, 3046, 1077, 4, 129.74, 518.96);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4085, 3046, 1026, 3, 430.74, 1292.22);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4086, 3047, 1029, 2, 65.13, 130.26);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4087, 3048, 1017, 3, 18.14, 54.42);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4088, 3049, 1037, 1, 277.79, 277.79);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4089, 3049, 1083, 5, 12.25, 61.25);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4090, 3050, 1035, 3, 49.22, 147.66);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4091, 3051, 1015, 3, 390.08, 1170.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4092, 3052, 1038, 5, 167.94, 839.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4093, 3052, 1035, 1, 376.15, 376.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4094, 3052, 1004, 2, 367.38, 734.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4095, 3053, 1052, 2, 396.14, 792.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4096, 3053, 1005, 3, 126.18, 378.54);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4097, 3053, 1099, 2, 133.19, 266.38);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4098, 3054, 1066, 4, 123.11, 492.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4099, 3055, 1039, 4, 371.54, 1486.16);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4100, 3055, 1030, 1, 216.45, 216.45);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4101, 3055, 1077, 4, 378.30, 1513.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4102, 3056, 1003, 5, 442.45, 2212.25);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4103, 3056, 1014, 4, 155.01, 620.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4104, 3056, 1051, 3, 120.81, 362.43);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4105, 3057, 1014, 5, 472.83, 2364.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4106, 3057, 1096, 3, 290.11, 870.33);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4107, 3058, 1044, 2, 450.94, 901.88);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4108, 3058, 1090, 3, 160.82, 482.46);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4109, 3059, 1003, 5, 339.43, 1697.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4110, 3059, 1023, 4, 342.98, 1371.92);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4111, 3059, 1100, 4, 374.08, 1496.32);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4112, 3060, 1053, 2, 34.21, 68.42);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4113, 3061, 1027, 5, 162.31, 811.55);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4114, 3062, 1044, 1, 166.39, 166.39);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4115, 3063, 1035, 2, 323.23, 646.46);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4116, 3064, 1021, 1, 314.91, 314.91);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4117, 3064, 1073, 2, 237.09, 474.18);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4118, 3065, 1033, 1, 198.17, 198.17);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4119, 3065, 1029, 3, 125.09, 375.27);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4120, 3066, 1100, 1, 50.81, 50.81);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4121, 3066, 1031, 4, 248.56, 994.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4122, 3067, 1078, 3, 427.45, 1282.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4123, 3068, 1077, 4, 91.51, 366.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4124, 3068, 1031, 5, 133.88, 669.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4125, 3069, 1001, 3, 376.21, 1128.63);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4126, 3069, 1075, 5, 229.53, 1147.65);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4127, 3069, 1035, 5, 152.38, 761.90);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4128, 3070, 1011, 1, 431.94, 431.94);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4129, 3070, 1037, 2, 371.70, 743.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4130, 3070, 1096, 2, 19.26, 38.52);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4131, 3071, 1026, 4, 201.35, 805.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4132, 3071, 1075, 3, 39.81, 119.43);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4133, 3071, 1033, 1, 252.25, 252.25);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4134, 3072, 1033, 5, 80.08, 400.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4135, 3072, 1091, 3, 189.98, 569.94);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4136, 3073, 1039, 4, 425.68, 1702.72);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4137, 3074, 1063, 1, 243.99, 243.99);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4138, 3074, 1044, 1, 160.50, 160.50);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4139, 3074, 1063, 3, 17.12, 51.36);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4140, 3075, 1081, 1, 89.76, 89.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4141, 3075, 1098, 3, 139.21, 417.63);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4142, 3075, 1042, 4, 480.76, 1923.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4143, 3076, 1048, 1, 183.55, 183.55);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4144, 3076, 1014, 1, 317.35, 317.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4145, 3077, 1022, 2, 99.95, 199.90);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4146, 3078, 1085, 4, 460.41, 1841.64);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4147, 3079, 1024, 5, 432.73, 2163.65);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4148, 3080, 1048, 3, 319.63, 958.89);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4149, 3080, 1015, 3, 211.00, 633.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4150, 3081, 1058, 3, 19.83, 59.49);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4151, 3081, 1091, 5, 201.17, 1005.85);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4152, 3082, 1007, 1, 94.71, 94.71);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4153, 3083, 1086, 4, 228.81, 915.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4154, 3083, 1086, 4, 166.44, 665.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4155, 3084, 1066, 1, 148.01, 148.01);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4156, 3085, 1095, 3, 407.25, 1221.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4157, 3086, 1044, 3, 492.03, 1476.09);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4158, 3086, 1075, 3, 260.26, 780.78);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4159, 3086, 1047, 5, 117.35, 586.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4160, 3087, 1002, 1, 278.95, 278.95);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4161, 3087, 1037, 3, 184.38, 553.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4162, 3087, 1040, 4, 444.67, 1778.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4163, 3088, 1071, 2, 195.99, 391.98);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4164, 3088, 1081, 4, 184.01, 736.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4165, 3089, 1056, 1, 209.02, 209.02);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4166, 3089, 1080, 1, 111.60, 111.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4167, 3090, 1079, 2, 448.63, 897.26);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4168, 3090, 1027, 2, 90.88, 181.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4169, 3090, 1040, 3, 28.04, 84.12);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4170, 3091, 1057, 2, 51.62, 103.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4171, 3092, 1018, 1, 42.00, 42.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4172, 3092, 1074, 4, 446.65, 1786.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4173, 3092, 1017, 5, 141.55, 707.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4174, 3093, 1096, 3, 380.12, 1140.36);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4175, 3094, 1001, 1, 242.05, 242.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4176, 3094, 1061, 1, 46.48, 46.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4177, 3095, 1013, 4, 160.83, 643.32);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4178, 3095, 1073, 4, 483.29, 1933.16);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4179, 3095, 1024, 1, 115.83, 115.83);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4180, 3096, 1063, 4, 159.86, 639.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4181, 3096, 1005, 4, 268.09, 1072.36);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4182, 3096, 1069, 5, 483.72, 2418.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4183, 3097, 1010, 1, 263.02, 263.02);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4184, 3097, 1053, 4, 464.12, 1856.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4185, 3098, 1070, 1, 75.54, 75.54);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4186, 3098, 1009, 1, 312.53, 312.53);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4187, 3099, 1026, 3, 467.00, 1401.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4188, 3099, 1005, 2, 482.99, 965.98);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4189, 3100, 1011, 2, 107.36, 214.72);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4190, 3101, 1001, 4, 477.61, 1910.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4191, 3101, 1025, 3, 85.03, 255.09);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4192, 3101, 1068, 3, 475.02, 1425.06);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4193, 3102, 1004, 1, 286.05, 286.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4194, 3103, 1037, 3, 491.46, 1474.38);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4195, 3104, 1078, 2, 273.89, 547.78);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4196, 3104, 1068, 1, 421.82, 421.82);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4197, 3104, 1021, 2, 75.82, 151.64);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4198, 3105, 1052, 5, 76.89, 384.45);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4199, 3105, 1044, 5, 167.96, 839.80);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4200, 3106, 1018, 4, 146.63, 586.52);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4201, 3106, 1100, 5, 229.84, 1149.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4202, 3106, 1019, 5, 83.64, 418.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4203, 3107, 1090, 3, 303.50, 910.50);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4204, 3107, 1027, 5, 487.61, 2438.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4205, 3108, 1027, 2, 140.01, 280.02);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4206, 3108, 1099, 3, 382.56, 1147.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4207, 3109, 1069, 2, 167.06, 334.12);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4208, 3110, 1068, 4, 116.03, 464.12);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4209, 3110, 1100, 1, 336.52, 336.52);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4210, 3111, 1046, 2, 376.94, 753.88);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4211, 3112, 1048, 3, 67.77, 203.31);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4212, 3113, 1047, 5, 295.57, 1477.85);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4213, 3113, 1067, 4, 255.74, 1022.96);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4214, 3114, 1074, 5, 56.35, 281.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4215, 3114, 1052, 3, 471.27, 1413.81);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4216, 3114, 1068, 5, 108.12, 540.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4217, 3115, 1083, 1, 319.31, 319.31);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4218, 3115, 1019, 1, 393.82, 393.82);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4219, 3115, 1002, 2, 264.57, 529.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4220, 3116, 1031, 1, 48.48, 48.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4221, 3117, 1037, 3, 300.34, 901.02);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4222, 3118, 1004, 4, 277.56, 1110.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4223, 3119, 1021, 5, 458.12, 2290.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4224, 3119, 1099, 4, 276.33, 1105.32);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4225, 3120, 1048, 1, 378.34, 378.34);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4226, 3121, 1078, 3, 137.66, 412.98);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4227, 3121, 1018, 1, 488.91, 488.91);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4228, 3122, 1100, 2, 112.32, 224.64);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4229, 3123, 1069, 3, 14.76, 44.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4230, 3123, 1013, 2, 24.30, 48.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4231, 3123, 1015, 5, 73.72, 368.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4232, 3124, 1073, 5, 132.05, 660.25);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4233, 3125, 1019, 3, 76.45, 229.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4234, 3125, 1064, 5, 381.14, 1905.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4235, 3125, 1046, 5, 121.13, 605.65);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4236, 3126, 1049, 3, 13.36, 40.08);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4237, 3126, 1003, 2, 481.05, 962.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4238, 3127, 1066, 5, 357.43, 1787.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4239, 3128, 1098, 1, 484.23, 484.23);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4240, 3128, 1066, 3, 247.17, 741.51);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4241, 3129, 1025, 4, 411.17, 1644.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4242, 3130, 1035, 2, 74.33, 148.66);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4243, 3130, 1086, 3, 392.74, 1178.22);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4244, 3130, 1021, 5, 467.28, 2336.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4245, 3131, 1034, 4, 441.72, 1766.88);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4246, 3131, 1024, 4, 454.29, 1817.16);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4247, 3132, 1095, 2, 373.40, 746.80);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4248, 3132, 1027, 5, 411.62, 2058.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4249, 3133, 1054, 4, 278.17, 1112.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4250, 3133, 1096, 5, 113.03, 565.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4251, 3133, 1028, 1, 282.21, 282.21);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4252, 3134, 1021, 3, 204.38, 613.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4253, 3134, 1038, 1, 215.07, 215.07);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4254, 3135, 1033, 2, 175.69, 351.38);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4255, 3135, 1078, 5, 20.82, 104.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4256, 3135, 1008, 2, 222.22, 444.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4257, 3136, 1047, 4, 285.75, 1143.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4258, 3136, 1011, 3, 321.74, 965.22);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4259, 3136, 1087, 5, 395.41, 1977.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4260, 3137, 1023, 2, 490.72, 981.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4261, 3137, 1063, 2, 340.55, 681.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4262, 3137, 1019, 4, 141.69, 566.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4263, 3138, 1089, 2, 258.93, 517.86);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4264, 3138, 1068, 3, 116.38, 349.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4265, 3139, 1014, 4, 171.84, 687.36);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4266, 3139, 1084, 3, 263.26, 789.78);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4267, 3139, 1053, 5, 90.21, 451.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4268, 3140, 1096, 3, 463.70, 1391.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4269, 3140, 1010, 5, 455.27, 2276.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4270, 3140, 1029, 4, 166.32, 665.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4271, 3141, 1062, 2, 72.10, 144.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4272, 3141, 1070, 1, 148.79, 148.79);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4273, 3141, 1030, 3, 153.21, 459.63);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4274, 3142, 1096, 1, 426.19, 426.19);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4275, 3142, 1059, 3, 474.00, 1422.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4276, 3142, 1074, 1, 478.77, 478.77);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4277, 3143, 1075, 4, 340.76, 1363.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4278, 3144, 1069, 2, 401.14, 802.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4279, 3145, 1015, 5, 81.28, 406.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4280, 3145, 1024, 5, 75.31, 376.55);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4281, 3146, 1035, 3, 440.98, 1322.94);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4282, 3147, 1078, 5, 410.29, 2051.45);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4283, 3147, 1012, 5, 461.46, 2307.30);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4284, 3148, 1007, 4, 492.58, 1970.32);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4285, 3148, 1011, 3, 100.46, 301.38);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4286, 3149, 1066, 1, 343.35, 343.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4287, 3149, 1057, 2, 113.33, 226.66);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4288, 3149, 1084, 2, 191.78, 383.56);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4289, 3150, 1038, 5, 390.41, 1952.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4290, 3150, 1063, 1, 376.59, 376.59);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4291, 3151, 1081, 1, 62.21, 62.21);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4292, 3151, 1096, 2, 104.78, 209.56);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4293, 3151, 1004, 4, 300.67, 1202.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4294, 3152, 1057, 1, 83.90, 83.90);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4295, 3153, 1062, 5, 304.25, 1521.25);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4296, 3153, 1062, 2, 305.82, 611.64);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4297, 3154, 1031, 3, 486.84, 1460.52);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4298, 3154, 1046, 2, 316.31, 632.62);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4299, 3154, 1020, 5, 76.52, 382.60);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4300, 3155, 1062, 3, 135.16, 405.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4301, 3155, 1012, 5, 334.88, 1674.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4302, 3155, 1053, 3, 369.85, 1109.55);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4303, 3156, 1078, 3, 123.89, 371.67);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4304, 3156, 1084, 2, 28.96, 57.92);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4305, 3157, 1006, 2, 279.19, 558.38);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4306, 3158, 1016, 5, 140.83, 704.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4307, 3158, 1023, 5, 359.93, 1799.65);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4308, 3158, 1073, 3, 186.90, 560.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4309, 3159, 1044, 1, 323.73, 323.73);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4310, 3159, 1028, 1, 54.87, 54.87);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4311, 3160, 1023, 4, 194.13, 776.52);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4312, 3161, 1089, 4, 281.48, 1125.92);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4313, 3161, 1018, 4, 391.72, 1566.88);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4314, 3161, 1097, 5, 13.14, 65.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4315, 3162, 1080, 1, 304.85, 304.85);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4316, 3162, 1069, 2, 245.00, 490.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4317, 3162, 1008, 4, 233.16, 932.64);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4318, 3163, 1004, 1, 334.01, 334.01);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4319, 3164, 1072, 4, 73.05, 292.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4320, 3165, 1014, 5, 43.42, 217.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4321, 3165, 1067, 3, 373.08, 1119.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4322, 3165, 1029, 1, 91.61, 91.61);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4323, 3166, 1064, 4, 418.69, 1674.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4324, 3166, 1046, 3, 251.33, 753.99);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4325, 3167, 1001, 5, 38.10, 190.50);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4326, 3167, 1036, 2, 259.82, 519.64);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4327, 3167, 1065, 1, 196.65, 196.65);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4328, 3168, 1013, 3, 317.40, 952.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4329, 3169, 1004, 4, 355.81, 1423.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4330, 3170, 1065, 5, 148.23, 741.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4331, 3171, 1009, 4, 37.27, 149.08);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4332, 3172, 1064, 4, 207.19, 828.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4333, 3172, 1084, 5, 110.75, 553.75);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4334, 3172, 1099, 1, 45.13, 45.13);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4335, 3173, 1054, 1, 104.76, 104.76);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4336, 3173, 1093, 1, 300.53, 300.53);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4337, 3173, 1082, 3, 65.87, 197.61);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4338, 3174, 1045, 1, 165.08, 165.08);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4339, 3175, 1098, 2, 270.25, 540.50);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4340, 3175, 1026, 4, 143.85, 575.40);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4341, 3176, 1003, 3, 397.67, 1193.01);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4342, 3176, 1025, 2, 189.21, 378.42);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4343, 3177, 1056, 4, 425.17, 1700.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4344, 3177, 1025, 2, 294.14, 588.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4345, 3178, 1013, 4, 181.23, 724.92);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4346, 3178, 1042, 1, 313.31, 313.31);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4347, 3179, 1034, 3, 192.26, 576.78);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4348, 3179, 1090, 5, 458.01, 2290.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4349, 3179, 1044, 5, 91.74, 458.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4350, 3180, 1081, 3, 202.54, 607.62);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4351, 3181, 1013, 3, 26.47, 79.41);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4352, 3182, 1089, 5, 37.14, 185.70);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4353, 3182, 1014, 2, 159.74, 319.48);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4354, 3182, 1090, 5, 117.49, 587.45);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4355, 3183, 1001, 3, 266.09, 798.27);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4356, 3183, 1079, 4, 361.49, 1445.96);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4357, 3183, 1033, 2, 88.66, 177.32);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4358, 3184, 1019, 4, 323.00, 1292.00);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4359, 3184, 1064, 3, 186.48, 559.44);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4360, 3185, 1061, 3, 251.76, 755.28);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4361, 3186, 1059, 4, 493.56, 1974.24);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4362, 3186, 1067, 5, 246.07, 1230.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4363, 3186, 1054, 5, 251.43, 1257.15);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4364, 3187, 1015, 1, 116.29, 116.29);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4365, 3188, 1042, 3, 35.45, 106.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4366, 3188, 1055, 1, 384.09, 384.09);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4367, 3189, 1034, 3, 497.40, 1492.20);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4368, 3189, 1061, 1, 30.04, 30.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4369, 3190, 1098, 3, 17.93, 53.79);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4370, 3190, 1084, 5, 413.82, 2069.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4371, 3191, 1054, 2, 395.05, 790.10);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4372, 3191, 1001, 4, 483.67, 1934.68);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4373, 3191, 1071, 2, 258.07, 516.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4374, 3192, 1056, 5, 408.10, 2040.50);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4375, 3192, 1064, 2, 228.41, 456.82);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4376, 3193, 1051, 1, 121.22, 121.22);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4377, 3193, 1093, 3, 198.24, 594.72);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4378, 3194, 1016, 3, 74.96, 224.88);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4379, 3194, 1043, 2, 94.29, 188.58);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4380, 3195, 1056, 3, 266.67, 800.01);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4381, 3195, 1034, 3, 257.74, 773.22);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4382, 3195, 1092, 4, 306.26, 1225.04);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4383, 3196, 1069, 5, 231.26, 1156.30);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4384, 3197, 1042, 2, 144.33, 288.66);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4385, 3197, 1075, 5, 332.87, 1664.35);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4386, 3197, 1022, 5, 354.81, 1774.05);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4387, 3198, 1074, 2, 422.07, 844.14);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4388, 3199, 1085, 1, 400.98, 400.98);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4389, 3200, 1002, 1, 13.62, 13.62);
INSERT INTO sales.order_details (order_detail_id, order_id, product_id, quantity, unit_price, total_price) VALUES (4390, 3200, 1033, 2, 138.31, 276.62);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 223
-- Name: order_details_order_detail_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.order_details_order_detail_id_seq', 20, true);


--
-- TOC entry 3221 (class 2606 OID 16625)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (order_detail_id);


--
-- TOC entry 3222 (class 2606 OID 16626)
-- Name: order_details order_details_order_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_details
    ADD CONSTRAINT order_details_order_id_fkey FOREIGN KEY (order_id) REFERENCES sales.orders(order_id) ON DELETE CASCADE;


--
-- TOC entry 3223 (class 2606 OID 16631)
-- Name: order_details order_details_product_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_details
    ADD CONSTRAINT order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES sales.products(product_id) ON DELETE CASCADE;


-- Completed on 2024-05-24 11:20:32 IST

--
-- PostgreSQL database dump complete
--
