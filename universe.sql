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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    age integer,
    type text,
    distance numeric(3,1)
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
-- Name: junction_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.junction_table (
    junction_table_id integer NOT NULL,
    name character varying(40),
    age integer,
    stupied integer NOT NULL
);


ALTER TABLE public.junction_table OWNER TO freecodecamp;

--
-- Name: junction_table_junction_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.junction_table_junction_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.junction_table_junction_table_id_seq OWNER TO freecodecamp;

--
-- Name: junction_table_junction_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.junction_table_junction_table_id_seq OWNED BY public.junction_table.junction_table_id;


--
-- Name: junction_table_stupied_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.junction_table_stupied_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.junction_table_stupied_seq OWNER TO freecodecamp;

--
-- Name: junction_table_stupied_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.junction_table_stupied_seq OWNED BY public.junction_table.stupied;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    age integer,
    is_sphere boolean
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
    name character varying(40),
    has_life boolean NOT NULL,
    age integer,
    type text
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
    name character varying(40),
    description text NOT NULL,
    age integer,
    is_sphere boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: junction_table junction_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table ALTER COLUMN junction_table_id SET DEFAULT nextval('public.junction_table_junction_table_id_seq'::regclass);


--
-- Name: junction_table stupied; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table ALTER COLUMN stupied SET DEFAULT nextval('public.junction_table_stupied_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Lenticular', 'arbit', 10, 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'arbiter', 20, 'andromeda', NULL);
INSERT INTO public.galaxy VALUES (6, 'Dwarf', 'arbitest', 30, 'Sombrero', NULL);
INSERT INTO public.galaxy VALUES (7, 'Supercluster', 'arbit', 40, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (8, 'Arbitrary', 'arbiter', 50, 'Whirlpool', NULL);
INSERT INTO public.galaxy VALUES (9, 'Peculiar', 'arbitest', 60, 'Quasar', NULL);
INSERT INTO public.galaxy VALUES (10, 'Lenticular', 'arbit', 70, 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES (11, 'Pinwheel', 'arbiter', 80, 'andromeda', NULL);
INSERT INTO public.galaxy VALUES (12, 'Dwarf', 'arbitest', 90, 'Sombrero', NULL);
INSERT INTO public.galaxy VALUES (13, 'Supercluster', 'arbit', 100, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (14, 'Arbitrary', 'arbiter', 110, 'Whirlpool', NULL);
INSERT INTO public.galaxy VALUES (15, 'Peculiar', 'arbitest', 120, 'Quasar', NULL);
INSERT INTO public.galaxy VALUES (16, 'Lenticular', 'arbit', 130, 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES (17, 'Pinwheel', 'arbiter', 140, 'andromeda', NULL);
INSERT INTO public.galaxy VALUES (18, 'Dwarf', 'arbitest', 150, 'Sombrero', NULL);
INSERT INTO public.galaxy VALUES (19, 'Supercluster', 'arbit', 160, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (20, 'Arbitrary', 'arbiter', 170, 'Whirlpool', NULL);
INSERT INTO public.galaxy VALUES (21, 'Peculiar', 'arbitest', 180, 'Quasar', NULL);
INSERT INTO public.galaxy VALUES (22, 'Lenticular', 'arbit', 1300, 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES (23, 'Arbitrary', 'arbiter', 200, 'Whirlpool', NULL);
INSERT INTO public.galaxy VALUES (24, 'Peculiar', 'arbitest', 190, 'Quasar', NULL);


--
-- Data for Name: junction_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.junction_table VALUES (1, 'arbit', 22, 1);
INSERT INTO public.junction_table VALUES (2, 'arbitrary', 23, 2);
INSERT INTO public.junction_table VALUES (3, 'arbitest', 256, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M', 'Oo', 10, true);
INSERT INTO public.moon VALUES (2, 'Oo', 'Oo', 20, false);
INSERT INTO public.moon VALUES (3, 'M', 'Oo', 30, true);
INSERT INTO public.moon VALUES (4, 'Oo', 'Oo', 40, false);
INSERT INTO public.moon VALUES (5, 'M', 'Oo', 50, true);
INSERT INTO public.moon VALUES (6, 'Oo', 'Oo', 60, false);
INSERT INTO public.moon VALUES (7, 'M', 'Oo', 70, true);
INSERT INTO public.moon VALUES (8, 'Oo', 'Oo', 80, false);
INSERT INTO public.moon VALUES (9, 'M', 'Oo', 90, true);
INSERT INTO public.moon VALUES (10, 'Oo', 'Oo', 100, false);
INSERT INTO public.moon VALUES (11, 'M', 'Oo', 110, true);
INSERT INTO public.moon VALUES (12, 'Oo', 'Oo', 120, false);
INSERT INTO public.moon VALUES (13, 'M', 'Oo', 130, true);
INSERT INTO public.moon VALUES (14, 'Oo', 'Oo', 140, false);
INSERT INTO public.moon VALUES (15, 'M', 'Oo', 130, true);
INSERT INTO public.moon VALUES (16, 'Oo', 'Oo', 160, false);
INSERT INTO public.moon VALUES (17, 'M', 'Oo', 130, true);
INSERT INTO public.moon VALUES (18, 'Oo', 'Oo', 160, false);
INSERT INTO public.moon VALUES (19, 'M', 'Oo', 130, true);
INSERT INTO public.moon VALUES (20, 'Oo', 'Oo', 160, false);
INSERT INTO public.moon VALUES (21, 'M', 'Oo', 130, true);
INSERT INTO public.moon VALUES (22, 'Oo', 'Oo', 160, false);
INSERT INTO public.moon VALUES (23, 'M', 'Oo', 130, true);
INSERT INTO public.moon VALUES (24, 'Oo', 'Oo', 160, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 10, 'Mesoplanet');
INSERT INTO public.planet VALUES (2, 'Venus', true, 20, 'Mesoplanet');
INSERT INTO public.planet VALUES (3, 'Mars', true, 30, 'Mesoplanet');
INSERT INTO public.planet VALUES (4, 'Jupiter', true, 40, 'Mesoplanet');
INSERT INTO public.planet VALUES (5, 'Saturn', false, 50, 'Iceplanet');
INSERT INTO public.planet VALUES (6, 'Neptune', false, 60, 'Iceplanet');
INSERT INTO public.planet VALUES (9, 'Uranus', false, 70, 'Iceplanet');
INSERT INTO public.planet VALUES (10, 'Protoplanet', false, 80, 'Iceplanet');
INSERT INTO public.planet VALUES (11, 'Gas', false, 90, 'Iceplanet');
INSERT INTO public.planet VALUES (12, 'Circum', false, 100, 'Iceplanet');
INSERT INTO public.planet VALUES (13, 'Circum', false, 110, 'Iceplanet');
INSERT INTO public.planet VALUES (14, 'Circum', true, 120, 'Iceplanet');
INSERT INTO public.planet VALUES (15, 'Circum', true, 130, 'Iceplanet');
INSERT INTO public.planet VALUES (16, 'Circum', true, 140, 'Iceplanet');
INSERT INTO public.planet VALUES (17, 'Circum', true, 150, 'Iceplanet');
INSERT INTO public.planet VALUES (18, 'navi', false, 160, 'Mesoplanet');
INSERT INTO public.planet VALUES (19, 'Circums', true, 170, 'Iceplanet');
INSERT INTO public.planet VALUES (20, 'navi', false, 180, 'Mesoplanet');
INSERT INTO public.planet VALUES (21, 'Circumfs', false, 190, 'Iceplanet');
INSERT INTO public.planet VALUES (22, 'navi', false, 200, 'Mesoplanet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ma', 'arbit', 10, true);
INSERT INTO public.star VALUES (2, 'Ga', 'arbiet', 20, false);
INSERT INTO public.star VALUES (3, 'Gag', 'arbieter', 30, false);
INSERT INTO public.star VALUES (4, 'Gags', 'arbieters', 40, true);
INSERT INTO public.star VALUES (5, 'Gags', 'arbieterst', 50, false);
INSERT INTO public.star VALUES (6, 'Gagst', 'arbieterstr', 60, true);
INSERT INTO public.star VALUES (8, 'Gagst', 'arbieterstssr', 70, true);
INSERT INTO public.star VALUES (9, 'Gagst', 'arbieterstssr', 80, false);
INSERT INTO public.star VALUES (10, 'Gagst', 'arbiet', 90, false);
INSERT INTO public.star VALUES (11, 'Gagst', 'arbiet', 100, false);
INSERT INTO public.star VALUES (12, 'Gagst', 'arbiet', 110, false);
INSERT INTO public.star VALUES (13, 'Gagst', 'arbiet', 120, true);
INSERT INTO public.star VALUES (14, 'Gagst', 'arbiet', 130, true);
INSERT INTO public.star VALUES (15, 'Gagst', 'arbiet', 140, false);
INSERT INTO public.star VALUES (16, 'Gagst', 'arbiet', 150, false);
INSERT INTO public.star VALUES (17, 'Gagst', 'arbiet', 160, false);
INSERT INTO public.star VALUES (18, 'Gagst', 'arbiet', 170, false);
INSERT INTO public.star VALUES (19, 'Gagst', 'arbiet', 180, false);
INSERT INTO public.star VALUES (20, 'Gagst', 'arbiet', 190, false);
INSERT INTO public.star VALUES (21, 'Gagst', 'arbiet', 200, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 24, true);


--
-- Name: junction_table_junction_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.junction_table_junction_table_id_seq', 3, true);


--
-- Name: junction_table_stupied_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.junction_table_stupied_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: junction_table junction_table_junction_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_junction_table_id_key UNIQUE (junction_table_id);


--
-- Name: junction_table junction_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_pkey PRIMARY KEY (junction_table_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star age; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT age FOREIGN KEY (age) REFERENCES public.galaxy(age);


--
-- Name: planet age; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT age FOREIGN KEY (age) REFERENCES public.star(age);


--
-- Name: moon age; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT age FOREIGN KEY (age) REFERENCES public.planet(age);


--
-- PostgreSQL database dump complete
--

