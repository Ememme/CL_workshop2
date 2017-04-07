--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: magdamieczynska
--

CREATE TABLE messages (
    id integer NOT NULL,
    text character varying(255),
    author character varying(255),
    topic_id integer
);


ALTER TABLE messages OWNER TO magdamieczynska;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: magdamieczynska
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE messages_id_seq OWNER TO magdamieczynska;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: magdamieczynska
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: topics; Type: TABLE; Schema: public; Owner: magdamieczynska
--

CREATE TABLE topics (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE topics OWNER TO magdamieczynska;

--
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: magdamieczynska
--

CREATE SEQUENCE topics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topics_id_seq OWNER TO magdamieczynska;

--
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: magdamieczynska
--

ALTER SEQUENCE topics_id_seq OWNED BY topics.id;


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: magdamieczynska
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: topics id; Type: DEFAULT; Schema: public; Owner: magdamieczynska
--

ALTER TABLE ONLY topics ALTER COLUMN id SET DEFAULT nextval('topics_id_seq'::regclass);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: magdamieczynska
--

COPY messages (id, text, author, topic_id) FROM stdin;
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: magdamieczynska
--

SELECT pg_catalog.setval('messages_id_seq', 1, false);


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: magdamieczynska
--

COPY topics (id, name) FROM stdin;
\.


--
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: magdamieczynska
--

SELECT pg_catalog.setval('topics_id_seq', 1, false);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: magdamieczynska
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: magdamieczynska
--

ALTER TABLE ONLY topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

