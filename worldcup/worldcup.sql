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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (353, 2018, 'Final', 4, 2, 270, 271);
INSERT INTO public.games VALUES (354, 2018, 'Third Place', 2, 0, 272, 273);
INSERT INTO public.games VALUES (355, 2018, 'Semi-Final', 2, 1, 271, 273);
INSERT INTO public.games VALUES (356, 2018, 'Semi-Final', 1, 0, 270, 272);
INSERT INTO public.games VALUES (357, 2018, 'Quarter-Final', 3, 2, 271, 274);
INSERT INTO public.games VALUES (358, 2018, 'Quarter-Final', 2, 0, 273, 275);
INSERT INTO public.games VALUES (359, 2018, 'Quarter-Final', 2, 1, 272, 276);
INSERT INTO public.games VALUES (360, 2018, 'Quarter-Final', 2, 0, 270, 277);
INSERT INTO public.games VALUES (361, 2018, 'Eighth-Final', 2, 1, 273, 278);
INSERT INTO public.games VALUES (362, 2018, 'Eighth-Final', 1, 0, 275, 279);
INSERT INTO public.games VALUES (363, 2018, 'Eighth-Final', 3, 2, 272, 280);
INSERT INTO public.games VALUES (364, 2018, 'Eighth-Final', 2, 0, 276, 281);
INSERT INTO public.games VALUES (365, 2018, 'Eighth-Final', 2, 1, 271, 282);
INSERT INTO public.games VALUES (366, 2018, 'Eighth-Final', 2, 1, 274, 283);
INSERT INTO public.games VALUES (367, 2018, 'Eighth-Final', 2, 1, 277, 284);
INSERT INTO public.games VALUES (368, 2018, 'Eighth-Final', 4, 3, 270, 285);
INSERT INTO public.games VALUES (369, 2014, 'Final', 1, 0, 286, 285);
INSERT INTO public.games VALUES (370, 2014, 'Third Place', 3, 0, 287, 276);
INSERT INTO public.games VALUES (371, 2014, 'Semi-Final', 1, 0, 285, 287);
INSERT INTO public.games VALUES (372, 2014, 'Semi-Final', 7, 1, 286, 276);
INSERT INTO public.games VALUES (373, 2014, 'Quarter-Final', 1, 0, 287, 288);
INSERT INTO public.games VALUES (374, 2014, 'Quarter-Final', 1, 0, 285, 272);
INSERT INTO public.games VALUES (375, 2014, 'Quarter-Final', 2, 1, 276, 278);
INSERT INTO public.games VALUES (376, 2014, 'Quarter-Final', 1, 0, 286, 270);
INSERT INTO public.games VALUES (377, 2014, 'Eighth-Final', 2, 1, 276, 289);
INSERT INTO public.games VALUES (378, 2014, 'Eighth-Final', 2, 0, 278, 277);
INSERT INTO public.games VALUES (379, 2014, 'Eighth-Final', 2, 0, 270, 290);
INSERT INTO public.games VALUES (380, 2014, 'Eighth-Final', 2, 1, 286, 291);
INSERT INTO public.games VALUES (381, 2014, 'Eighth-Final', 2, 1, 287, 281);
INSERT INTO public.games VALUES (382, 2014, 'Eighth-Final', 2, 1, 288, 292);
INSERT INTO public.games VALUES (383, 2014, 'Eighth-Final', 1, 0, 285, 279);
INSERT INTO public.games VALUES (384, 2014, 'Eighth-Final', 2, 1, 272, 293);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (270, 'France');
INSERT INTO public.teams VALUES (271, 'Croatia');
INSERT INTO public.teams VALUES (272, 'Belgium');
INSERT INTO public.teams VALUES (273, 'England');
INSERT INTO public.teams VALUES (274, 'Russia');
INSERT INTO public.teams VALUES (275, 'Sweden');
INSERT INTO public.teams VALUES (276, 'Brazil');
INSERT INTO public.teams VALUES (277, 'Uruguay');
INSERT INTO public.teams VALUES (278, 'Colombia');
INSERT INTO public.teams VALUES (279, 'Switzerland');
INSERT INTO public.teams VALUES (280, 'Japan');
INSERT INTO public.teams VALUES (281, 'Mexico');
INSERT INTO public.teams VALUES (282, 'Denmark');
INSERT INTO public.teams VALUES (283, 'Spain');
INSERT INTO public.teams VALUES (284, 'Portugal');
INSERT INTO public.teams VALUES (285, 'Argentina');
INSERT INTO public.teams VALUES (286, 'Germany');
INSERT INTO public.teams VALUES (287, 'Netherlands');
INSERT INTO public.teams VALUES (288, 'Costa Rica');
INSERT INTO public.teams VALUES (289, 'Chile');
INSERT INTO public.teams VALUES (290, 'Nigeria');
INSERT INTO public.teams VALUES (291, 'Algeria');
INSERT INTO public.teams VALUES (292, 'Greece');
INSERT INTO public.teams VALUES (293, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 384, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 293, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opp_team_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opp_team_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_win_team_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_win_team_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

