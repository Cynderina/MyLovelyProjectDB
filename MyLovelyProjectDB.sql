--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-01 21:56:57

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

DROP DATABASE project;
--
-- TOC entry 2836 (class 1262 OID 16405)
-- Name: project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Finnish_Finland.1252' LC_CTYPE = 'Finnish_Finland.1252';


ALTER DATABASE project OWNER TO postgres;

\connect project

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
-- TOC entry 205 (class 1259 OID 16458)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    "ID" integer NOT NULL,
    ordernumber character varying,
    supplier character varying,
    total double precision,
    purchaser character varying
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16456)
-- Name: orders_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."orders_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."orders_ID_seq" OWNER TO postgres;

--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 204
-- Name: orders_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."orders_ID_seq" OWNED BY public.orders."ID";


--
-- TOC entry 203 (class 1259 OID 16408)
-- Name: worker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worker (
    "ID" integer NOT NULL,
    name character varying,
    role character varying
);


ALTER TABLE public.worker OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16406)
-- Name: user_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."user_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."user_ID_seq" OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 202
-- Name: user_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."user_ID_seq" OWNED BY public.worker."ID";


--
-- TOC entry 2696 (class 2604 OID 16461)
-- Name: orders ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN "ID" SET DEFAULT nextval('public."orders_ID_seq"'::regclass);


--
-- TOC entry 2695 (class 2604 OID 16411)
-- Name: worker ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker ALTER COLUMN "ID" SET DEFAULT nextval('public."user_ID_seq"'::regclass);


--
-- TOC entry 2830 (class 0 OID 16458)
-- Dependencies: 205
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders ("ID", ordernumber, supplier, total, purchaser) FROM stdin;
1	456	Cittari	13.58	Katri
2	123	Kesko	48.56	Matti
3	124	Kesko	158.47	Maija
4	125	Kesko	158.78	Matti
5	159	SOK	48.25	Katri
\.


--
-- TOC entry 2828 (class 0 OID 16408)
-- Dependencies: 203
-- Data for Name: worker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worker ("ID", name, role) FROM stdin;
1	Matti	Purchaser
2	Maija	ARSpecialist
3	Katri	Admin
4	Heli	Admin
5	Tiina	Admin
6	Admin	Admin
7	Purchaser	Purchaser
8	ARSpecialist	ARSpecialist
\.


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 204
-- Name: orders_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."orders_ID_seq"', 5, true);


--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 202
-- Name: user_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."user_ID_seq"', 8, true);


--
-- TOC entry 2700 (class 2606 OID 16466)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY ("ID");


--
-- TOC entry 2698 (class 2606 OID 16416)
-- Name: worker user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker
    ADD CONSTRAINT user_pkey PRIMARY KEY ("ID");


-- Completed on 2019-12-01 21:56:57

--
-- PostgreSQL database dump complete
--

