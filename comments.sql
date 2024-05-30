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
-- Name: comments; Type: TABLE; Schema: public; Owner: joshuacutts
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    user_id integer,
    body text
);


ALTER TABLE public.comments OWNER TO joshuacutts;

--
-- Name: comments_join_id_seq; Type: SEQUENCE; Schema: public; Owner: joshuacutts
--

CREATE SEQUENCE public.comments_join_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comments_join_id_seq OWNER TO joshuacutts;

--
-- Name: comments_join_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joshuacutts
--

ALTER SEQUENCE public.comments_join_id_seq OWNED BY public.comments.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: joshuacutts
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_join_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: joshuacutts
--

INSERT INTO public.comments VALUES (1, 1, 'A bit long, but otherwise OK.');
INSERT INTO public.comments VALUES (2, 1, 'Can''t wait to watch this again');
INSERT INTO public.comments VALUES (3, 3, 'Maybe the slowest thing I''ve seen.');
INSERT INTO public.comments VALUES (4, NULL, 'The best movie ever.');


--
-- Name: comments_join_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joshuacutts
--

SELECT pg_catalog.setval('public.comments_join_id_seq', 4, true);


--
-- Name: comments comments_join_pkey; Type: CONSTRAINT; Schema: public; Owner: joshuacutts
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_join_pkey PRIMARY KEY (id);


--
-- Name: comments comments_join_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: joshuacutts
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_join_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

