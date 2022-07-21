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
    name character varying(30) NOT NULL,
    total_planets integer,
    distance_from_other_galaxy integer,
    age_in_million_of_years numeric(4,1),
    galaxy_description text
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
    name character varying(30),
    moon_age integer,
    moon_description character varying(80),
    planet_id integer NOT NULL
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
    name character varying(30),
    isspherical boolean,
    haslife boolean,
    planet_age integer,
    planet_description character varying(80),
    star_id integer NOT NULL
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
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_id integer NOT NULL,
    age integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    star_age integer,
    star_description character varying(80)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_tar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_tar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_tar_id_seq OWNER TO freecodecamp;

--
-- Name: star_tar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_tar_id_seq OWNED BY public.star.star_id;


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
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_tar_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1, 100, 10.1, 'galaxy1 is amazing');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2, 200, 20.1, 'galaxy2 is amazing');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 3, 300, 30.1, 'galaxy3 is amazing');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4, 400, 40.1, 'galaxy4 is amazing');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5, 500, 50.1, 'galaxy5 is amazing');
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6, 600, 60.1, 'galaxy6 is amazing');
INSERT INTO public.galaxy VALUES (7, 'galaxy7', 7, 700, 70.1, 'galaxy7 is amazing');
INSERT INTO public.galaxy VALUES (8, 'galaxy8', 8, 800, 80.1, 'galaxy8 is amazing');
INSERT INTO public.galaxy VALUES (9, 'galaxy9', 9, 900, 90.1, 'galaxy9 is amazing');
INSERT INTO public.galaxy VALUES (10, 'galaxy10', 10, 1000, 100.1, 'galaxy10 is amazing');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 10, 'moon1 is amazing', 1);
INSERT INTO public.moon VALUES (2, 'moon2', 20, 'moon2 is amazing', 2);
INSERT INTO public.moon VALUES (3, 'moon3', 30, 'moon3 is amazing', 3);
INSERT INTO public.moon VALUES (4, 'moon4', 40, 'moon4 is amazing', 4);
INSERT INTO public.moon VALUES (5, 'moon5', 50, 'moon5 is amazing', 5);
INSERT INTO public.moon VALUES (6, 'moon6', 60, 'moon6 is amazing', 6);
INSERT INTO public.moon VALUES (7, 'moon7', 70, 'moon7 is amazing', 7);
INSERT INTO public.moon VALUES (8, 'moon8', 80, 'moon8 is amazing', 8);
INSERT INTO public.moon VALUES (9, 'moon9', 90, 'moon9 is amazing', 9);
INSERT INTO public.moon VALUES (10, 'moon10', 100, 'moon10 is amazing', 10);
INSERT INTO public.moon VALUES (11, 'moon11', 110, 'moon11 is amazing', 11);
INSERT INTO public.moon VALUES (12, 'moon12', 120, 'moon12 is amazing', 12);
INSERT INTO public.moon VALUES (13, 'moon13', 130, 'moon13 is amazing', 13);
INSERT INTO public.moon VALUES (14, 'moon14', 140, 'moon14 is amazing', 14);
INSERT INTO public.moon VALUES (15, 'moon15', 150, 'moon15 is amazing', 1);
INSERT INTO public.moon VALUES (16, 'moon16', 160, 'moon16 is amazing', 1);
INSERT INTO public.moon VALUES (17, 'moon17', 170, 'moon17 is amazing', 2);
INSERT INTO public.moon VALUES (18, 'moon18', 180, 'moon18 is amazing', 3);
INSERT INTO public.moon VALUES (19, 'moon19', 190, 'moon19 is amazing', 4);
INSERT INTO public.moon VALUES (20, 'moon20', 200, 'moon20 is amazing', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', false, false, 10, 'planet1 is amazing', 1);
INSERT INTO public.planet VALUES (2, 'planet2', true, true, 20, 'planet2 is amazing', 2);
INSERT INTO public.planet VALUES (3, 'planet3', false, false, 30, 'planet3 is amazing', 3);
INSERT INTO public.planet VALUES (4, 'planet4', true, true, 40, 'planet4 is amazing', 4);
INSERT INTO public.planet VALUES (5, 'planet5', false, false, 50, 'planet5 is amazing', 5);
INSERT INTO public.planet VALUES (6, 'planet6', true, true, 60, 'planet6 is amazing', 6);
INSERT INTO public.planet VALUES (7, 'planet7', false, false, 70, 'planet7 is amazing', 7);
INSERT INTO public.planet VALUES (8, 'planet8', true, true, 80, 'planet8 is amazing', 8);
INSERT INTO public.planet VALUES (9, 'planet9', false, false, 90, 'planet9 is amazing', 9);
INSERT INTO public.planet VALUES (10, 'planet10', true, true, 100, 'planet10 is amazing', 10);
INSERT INTO public.planet VALUES (11, 'planet11', false, false, 110, 'planet11 is amazing', 1);
INSERT INTO public.planet VALUES (12, 'planet12', true, true, 120, 'planet12 is amazing', 1);
INSERT INTO public.planet VALUES (13, 'planet13', false, false, 130, 'planet13 is amazing', 2);
INSERT INTO public.planet VALUES (14, 'planet14', true, true, 140, 'planet14 is amazing', 3);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (1, 10, 'space1');
INSERT INTO public.space VALUES (2, 20, 'space2');
INSERT INTO public.space VALUES (3, 30, 'space3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 10, 'star1 is amazing');
INSERT INTO public.star VALUES (2, 'star2', 2, 20, 'star2 is amazing');
INSERT INTO public.star VALUES (3, 'star3', 3, 30, 'star3 is amazing');
INSERT INTO public.star VALUES (4, 'star4', 4, 40, 'star4 is amazing');
INSERT INTO public.star VALUES (5, 'star5', 5, 50, 'star5 is amazing');
INSERT INTO public.star VALUES (6, 'star6', 6, 60, 'star6 is amazing');
INSERT INTO public.star VALUES (7, 'star7', 7, 70, 'star7 is amazing');
INSERT INTO public.star VALUES (8, 'star8', 8, 80, 'star8 is amazing');
INSERT INTO public.star VALUES (9, 'star9', 9, 90, 'star9 is amazing');
INSERT INTO public.star VALUES (10, 'star10', 10, 100, 'star10 is amazing');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 3, true);


--
-- Name: star_tar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_tar_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_name_key UNIQUE (name);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

