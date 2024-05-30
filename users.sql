--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Homebrew)
-- Dumped by pg_dump version 16.3 (Homebrew)

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
-- Name: users; Type: TABLE; Schema: public; Owner: joshuacutts
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text
);


ALTER TABLE public.users OWNER TO joshuacutts;

--
-- Name: user_join_id_seq; Type: SEQUENCE; Schema: public; Owner: joshuacutts
--

CREATE SEQUENCE public.user_join_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_join_id_seq OWNER TO joshuacutts;

--
-- Name: user_join_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joshuacutts
--

ALTER SEQUENCE public.user_join_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: joshuacutts
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_join_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: joshuacutts
--

INSERT INTO public.users VALUES (1, 'VardenBeaulac@gmail.com');
INSERT INTO public.users VALUES (2, 'HaNhuVan@hotmail.com');
INSERT INTO public.users VALUES (3, 'SanelaMatijevic@yahoo.com');


--
-- Name: user_join_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joshuacutts
--

SELECT pg_catalog.setval('public.user_join_id_seq', 3, true);


--
-- Name: users user_join_pkey; Type: CONSTRAINT; Schema: public; Owner: joshuacutts
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_join_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

