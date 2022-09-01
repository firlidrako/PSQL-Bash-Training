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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: earth_island; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth_island (
    earth_island_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_province integer NOT NULL,
    is_indonesia boolean NOT NULL
);


ALTER TABLE public.earth_island OWNER TO freecodecamp;

--
-- Name: earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_id_seq OWNED BY public.earth_island.earth_island_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apparent_magnitude numeric,
    constelation text,
    is_earth_there boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    dum1 character varying(20),
    dum2 character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_count integer NOT NULL,
    star_id integer,
    dum2 character varying(20),
    dum1 character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    dum1 character varying(20),
    dum2 character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth_island earth_island_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_island ALTER COLUMN earth_island_id SET DEFAULT nextval('public.earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth_island; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth_island VALUES (1, 'sumatera', 6, true);
INSERT INTO public.earth_island VALUES (2, 'jawa', 12, true);
INSERT INTO public.earth_island VALUES (3, 'papua', 5, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 6.5, 'Sagittarius', true);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 0.9, 'Dorado/Mensa', false);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 2.7, 'Tucana', false);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 3.4, 'Andromeda', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 5.7, 'Triangulum', false);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 6.84, 'Centaurus', false);
INSERT INTO public.galaxy VALUES (7, 'Bode''s Galaxy', 6.94, 'Ursa Major', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'moonA', 2, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'moonA', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'pltA', 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'pltB', 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'pltC', 1, 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'pltD', 1, 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'pltE', 1, 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'pltF', 1, 3, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'pltG', 1, 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pltH', 1, 4, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'pltI', 1, 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'pltJ', 1, 5, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'pltK', 1, 6, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'pltL', 1, 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starA', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'starB', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'starC', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'staDB', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'starE', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'starF', 6, NULL, NULL);


--
-- Name: earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 33, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth_island earth_island_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_island
    ADD CONSTRAINT earth_island_id_unique UNIQUE (earth_island_id);


--
-- Name: earth_island earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth_island
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_island_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star test; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT test FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet test1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT test1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon test2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT test2 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

