--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(20),
    description text,
    area numeric(3,1) NOT NULL,
    distance integer NOT NULL,
    radius integer,
    visited boolean,
    visible boolean
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
    name character varying(20),
    description text,
    area numeric(3,1) NOT NULL,
    distance integer NOT NULL,
    radius integer,
    visited boolean,
    visible boolean,
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    more boolean,
    galaxy_id integer
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    description text,
    area numeric(3,1) NOT NULL,
    distance integer NOT NULL,
    radius integer,
    visited boolean,
    visible boolean,
    star_id integer
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
    name character varying(20),
    description text,
    area numeric(3,1) NOT NULL,
    distance integer NOT NULL,
    radius integer,
    visited boolean,
    visible boolean,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'description1', 1.0, 1, 1, false, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'description2', 2.0, 2, 2, false, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'description3', 3.0, 3, 3, false, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'description4', 4.0, 4, 4, false, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'description5', 5.0, 5, 5, false, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'description6', 6.0, 6, 6, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'description1', 1.0, 1, 1, false, true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'description2', 2.0, 2, 2, false, true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 'description3', 3.0, 3, 3, false, true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'description4', 4.0, 4, 4, false, true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'description5', 5.0, 5, 5, false, true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 'description6', 6.0, 6, 6, false, true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 'description7', 7.0, 7, 7, false, true, 1);
INSERT INTO public.moon VALUES (8, 'moon8', 'description8', 8.0, 8, 8, false, true, 2);
INSERT INTO public.moon VALUES (9, 'moon9', 'description9', 9.0, 9, 9, false, true, 3);
INSERT INTO public.moon VALUES (10, 'moon10', 'description10', 10.0, 10, 10, false, true, 4);
INSERT INTO public.moon VALUES (11, 'moon11', 'description11', 11.0, 11, 11, false, true, 5);
INSERT INTO public.moon VALUES (12, 'moon12', 'description12', 12.0, 12, 12, false, true, 6);
INSERT INTO public.moon VALUES (13, 'moon13', 'description13', 13.0, 13, 13, false, true, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 'description14', 14.0, 14, 14, false, true, 2);
INSERT INTO public.moon VALUES (15, 'moon15', 'description15', 15.0, 15, 15, false, true, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 'description16', 16.0, 16, 16, false, true, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 'description17', 17.0, 17, 17, false, true, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 'description18', 18.0, 18, 18, false, true, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 'description19', 19.0, 19, 19, false, true, 5);
INSERT INTO public.moon VALUES (20, 'moon20', 'description20', 20.0, 20, 20, false, true, 6);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'info1', 'description1', false, 1);
INSERT INTO public.more_info VALUES (2, 'info2', 'description2', false, 2);
INSERT INTO public.more_info VALUES (3, 'info3', 'description3', false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'description1', 1.0, 1, 1, false, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'description2', 2.0, 2, 2, false, true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 'description3', 3.0, 3, 3, false, true, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 'description4', 4.0, 4, 4, false, true, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 'description5', 5.0, 5, 5, false, true, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 'description6', 6.0, 6, 6, false, true, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 'description7', 7.0, 7, 7, false, true, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 'description8', 8.0, 8, 8, false, true, 2);
INSERT INTO public.planet VALUES (9, 'planet9', 'description9', 9.0, 9, 9, false, true, 3);
INSERT INTO public.planet VALUES (10, 'planet10', 'description10', 10.0, 10, 10, false, true, 4);
INSERT INTO public.planet VALUES (11, 'planet11', 'description11', 11.0, 11, 11, false, true, 5);
INSERT INTO public.planet VALUES (12, 'planet12', 'description12', 12.0, 12, 12, false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'description1', 1.0, 1, 1, false, true, 1);
INSERT INTO public.star VALUES (2, 'star2', 'description2', 2.0, 2, 2, false, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 'description3', 3.0, 3, 3, false, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 'description4', 4.0, 4, 4, false, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 'description5', 5.0, 5, 5, false, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 'description6', 6.0, 6, 6, false, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: more_info more_info_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

