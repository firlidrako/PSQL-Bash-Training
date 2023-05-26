--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: user_history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_history (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    games_played integer NOT NULL,
    best_game integer NOT NULL
);


ALTER TABLE public.user_history OWNER TO freecodecamp;

--
-- Name: user_history_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_history_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_history_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_history_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_history_user_id_seq OWNED BY public.user_history.user_id;


--
-- Name: user_history user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_history ALTER COLUMN user_id SET DEFAULT nextval('public.user_history_user_id_seq'::regclass);


--
-- Data for Name: user_history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_history VALUES (5, 'permata', 4, 10);
INSERT INTO public.user_history VALUES (7, 'user_1685080738046', 2, 26);
INSERT INTO public.user_history VALUES (21, 'user_1685081942913', 2, 916);
INSERT INTO public.user_history VALUES (6, 'user_1685080738047', 5, 224);
INSERT INTO public.user_history VALUES (65, 'user_1685083855296', 2, 398);
INSERT INTO public.user_history VALUES (9, 'user_1685081220507', 2, 549);
INSERT INTO public.user_history VALUES (20, 'user_1685081942914', 5, 60);
INSERT INTO public.user_history VALUES (45, 'user_1685082268829', 2, 162);
INSERT INTO public.user_history VALUES (8, 'user_1685081220508', 5, 235);
INSERT INTO public.user_history VALUES (23, 'user_1685082037339', 2, 315);
INSERT INTO public.user_history VALUES (11, 'user_1685081254885', 2, 727);
INSERT INTO public.user_history VALUES (44, 'user_1685082268830', 5, 43);
INSERT INTO public.user_history VALUES (10, 'user_1685081254886', 5, 37);
INSERT INTO public.user_history VALUES (22, 'user_1685082037340', 5, 111);
INSERT INTO public.user_history VALUES (13, 'user_1685081299603', 2, 360);
INSERT INTO public.user_history VALUES (64, 'user_1685083855297', 5, 56);
INSERT INTO public.user_history VALUES (66, 'Pulpa', 1, 9);
INSERT INTO public.user_history VALUES (12, 'user_1685081299604', 5, 186);
INSERT INTO public.user_history VALUES (25, 'user_1685082140324', 2, 367);
INSERT INTO public.user_history VALUES (47, 'user_1685082406776', 2, 111);
INSERT INTO public.user_history VALUES (15, 'user_1685081552596', 2, 118);
INSERT INTO public.user_history VALUES (24, 'user_1685082140325', 5, 386);
INSERT INTO public.user_history VALUES (14, 'user_1685081552597', 5, 152);
INSERT INTO public.user_history VALUES (27, 'user_1685082147424', 2, 194);
INSERT INTO public.user_history VALUES (17, 'user_1685081659877', 2, 33);
INSERT INTO public.user_history VALUES (46, 'user_1685082406777', 5, 411);
INSERT INTO public.user_history VALUES (16, 'user_1685081659878', 5, 53);
INSERT INTO public.user_history VALUES (26, 'user_1685082147425', 5, 93);
INSERT INTO public.user_history VALUES (19, 'user_1685081862794', 2, 180);
INSERT INTO public.user_history VALUES (68, 'user_1685083979354', 2, 73);
INSERT INTO public.user_history VALUES (29, 'user_1685082151892', 2, 245);
INSERT INTO public.user_history VALUES (18, 'user_1685081862795', 5, 158);
INSERT INTO public.user_history VALUES (49, 'user_1685082945681', 2, 119);
INSERT INTO public.user_history VALUES (28, 'user_1685082151893', 5, 102);
INSERT INTO public.user_history VALUES (31, 'user_1685082159290', 2, 583);
INSERT INTO public.user_history VALUES (48, 'user_1685082945682', 5, 125);
INSERT INTO public.user_history VALUES (30, 'user_1685082159291', 5, 375);
INSERT INTO public.user_history VALUES (67, 'user_1685083979355', 5, 247);
INSERT INTO public.user_history VALUES (33, 'user_1685082168034', 2, 193);
INSERT INTO public.user_history VALUES (51, 'user_1685082972087', 2, 9);
INSERT INTO public.user_history VALUES (32, 'user_1685082168035', 5, 294);
INSERT INTO public.user_history VALUES (35, 'user_1685082174092', 2, 152);
INSERT INTO public.user_history VALUES (50, 'user_1685082972088', 5, 53);
INSERT INTO public.user_history VALUES (34, 'user_1685082174093', 5, 248);
INSERT INTO public.user_history VALUES (37, 'user_1685082196206', 2, 538);
INSERT INTO public.user_history VALUES (53, 'user_1685083042797', 2, 247);
INSERT INTO public.user_history VALUES (36, 'user_1685082196207', 5, 146);
INSERT INTO public.user_history VALUES (39, 'user_1685082203006', 2, 656);
INSERT INTO public.user_history VALUES (52, 'user_1685083042798', 5, 607);
INSERT INTO public.user_history VALUES (38, 'user_1685082203007', 5, 497);
INSERT INTO public.user_history VALUES (41, 'user_1685082214270', 2, 887);
INSERT INTO public.user_history VALUES (55, 'user_1685083082491', 2, 3);
INSERT INTO public.user_history VALUES (40, 'user_1685082214271', 5, 104);
INSERT INTO public.user_history VALUES (54, 'user_1685083082492', 5, 150);
INSERT INTO public.user_history VALUES (43, 'user_1685082225996', 2, 532);
INSERT INTO public.user_history VALUES (42, 'user_1685082225997', 5, 498);
INSERT INTO public.user_history VALUES (57, 'user_1685083093692', 2, 25);
INSERT INTO public.user_history VALUES (56, 'user_1685083093693', 5, 33);
INSERT INTO public.user_history VALUES (59, 'user_1685083196709', 2, 52);
INSERT INTO public.user_history VALUES (58, 'user_1685083196710', 5, 113);
INSERT INTO public.user_history VALUES (60, 'indah', 1, 12);
INSERT INTO public.user_history VALUES (62, 'user_1685083774683', 2, 569);
INSERT INTO public.user_history VALUES (61, 'user_1685083774684', 5, 36);
INSERT INTO public.user_history VALUES (63, 'PUTRA', 1, 12);


--
-- Name: user_history_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_history_user_id_seq', 68, true);


--
-- Name: user_history user_history_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_history
    ADD CONSTRAINT user_history_name_key UNIQUE (name);


--
-- Name: user_history user_history_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_history
    ADD CONSTRAINT user_history_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

