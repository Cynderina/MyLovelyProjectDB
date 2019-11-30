--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.15
-- Dumped by pg_dump version 9.6.15

-- Started on 2019-11-30 13:00:25

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
-- TOC entry 2129 (class 1262 OID 16523)
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

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2132 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 16526)
-- Name: worker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worker (
    "ID" integer NOT NULL,
    name character varying,
    role character varying
);


ALTER TABLE public.worker OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16524)
-- Name: worker_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."worker_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."worker_ID_seq" OWNER TO postgres;

--
-- TOC entry 2133 (class 0 OID 0)
-- Dependencies: 185
-- Name: worker_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."worker_ID_seq" OWNED BY public.worker."ID";


--
-- TOC entry 2002 (class 2604 OID 16529)
-- Name: worker ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker ALTER COLUMN "ID" SET DEFAULT nextval('public."worker_ID_seq"'::regclass);


--
-- TOC entry 2123 (class 0 OID 16526)
-- Dependencies: 186
-- Data for Name: worker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worker ("ID", name, role) FROM stdin;
\.


--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 185
-- Name: worker_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."worker_ID_seq"', 1, false);


--
-- TOC entry 2004 (class 2606 OID 16534)
-- Name: worker worker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY ("ID");


--
-- TOC entry 2131 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-11-30 13:00:26

--
-- PostgreSQL database dump complete
--

