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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    speed_in_mps numeric(4,1) NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_billions_of_years numeric(4,1),
    dia_in_ly integer,
    description text,
    distance_in_ly integer
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    circumference_in_miles integer,
    material text,
    has_water boolean,
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    circumference_in_miles integer,
    num_of_moons integer,
    has_life boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    description text,
    luminosity_in_watts numeric(4,3),
    galaxy_id integer NOT NULL
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley''s Comet', 50.5);
INSERT INTO public.comet VALUES (2, 'Tempel 1', 25.3);
INSERT INTO public.comet VALUES (3, '81P/Wild', 93.2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 13.6, 100000, 'we are here', 0);
INSERT INTO public.galaxy VALUES (2, 'lmc', 1.1, 14000, 'satellite galaxy', 158000);
INSERT INTO public.galaxy VALUES (3, 'andromeda', 10.0, 220000, 'barred spiral galaxy', 2500000);
INSERT INTO public.galaxy VALUES (4, 'cigar', 12.0, 37000, 'starbusrt galaxy', 11500000);
INSERT INTO public.galaxy VALUES (5, 'pinwheel', 0.5, 170000, 'face-on spiral galaxy', 20870000);
INSERT INTO public.galaxy VALUES (6, 'whirlpool', 0.5, 60000, 'interacting grand-design spiral galaxy', 30000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (17, '41 Daphne (A856 KA)', 38, 98, 'rock', true, 1);
INSERT INTO public.moon VALUES (18, '87 Sylvia (A866 KA)', 87, 5, 'ice', false, 2);
INSERT INTO public.moon VALUES (19, '22 Kalliope (A852 WA)', 86, 17, 'gas', true, 3);
INSERT INTO public.moon VALUES (20, '31346 (1998 PB1)', 55, 14, 'titanium', false, 4);
INSERT INTO public.moon VALUES (21, '1626 Sadeya (1927 AA)', 51, 46, 'vibranium', true, 5);
INSERT INTO public.moon VALUES (22, '4901 O Briain (1988 VJ)', 47, 31, 'new element', false, 6);
INSERT INTO public.moon VALUES (23, '7889 (1994 LX)', 45, 75, 'rock', true, 7);
INSERT INTO public.moon VALUES (24, '4362 Carlisle (1978 PR4)', 43, 57, 'ice', false, 8);
INSERT INTO public.moon VALUES (25, '2883 Barabashov (1978 RG6)', 43, 56, 'gas', true, 9);
INSERT INTO public.moon VALUES (26, '2871 Schober (1981 QC2)', 42, 24, 'titanium', false, 10);
INSERT INTO public.moon VALUES (27, '185851 (2000 DP107)', 42, 1, 'vibranium', true, 12);
INSERT INTO public.moon VALUES (28, '3390 Demanet (1984 ES1)', 37, 0, 'new element', false, 13);
INSERT INTO public.moon VALUES (29, '5781 Barkhatova (1990 SM28)', 36, 63, 'rock', true, 1);
INSERT INTO public.moon VALUES (30, '118303 (1998 UG)', 35, 32, 'ice', false, 2);
INSERT INTO public.moon VALUES (31, '4528 Berg (1983 PP)', 35, 94, 'gas', true, 2);
INSERT INTO public.moon VALUES (32, '87 Sylvia (A866 KB)', 32, 39, 'titanium', false, 4);
INSERT INTO public.moon VALUES (33, '35107 (1991 VH)', 32, 27, 'vibranium', true, 5);
INSERT INTO public.moon VALUES (34, '26308 (1998 SM165)', 3123, 93, 'new element', false, 6);
INSERT INTO public.moon VALUES (35, '6764 Kirillavrov (1981 TM3)', 30, 97, 'rock', true, 7);
INSERT INTO public.moon VALUES (36, '136617 (1994 CC)', 29, 45, 'ice', false, 8);
INSERT INTO public.moon VALUES (37, '3523 Arina (1975 TV2)', 29, 51, 'gas', true, 9);
INSERT INTO public.moon VALUES (38, '5319 Petrovskaya (1985 RK6)', 28, 44, 'titanium', false, 10);
INSERT INTO public.moon VALUES (39, '10140 Villon (1993 SX4)', 28, 37, 'vibranium', true, 12);
INSERT INTO public.moon VALUES (40, '1803 Zwicky (1967 CA)', 28, 46, 'new element', false, 13);
INSERT INTO public.moon VALUES (41, '3671 Dionysus (1984 KD)', 27, 39, 'rock', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 48, 10, 0, false, 3);
INSERT INTO public.planet VALUES (2, 'venus', 24, 15, 0, false, 4);
INSERT INTO public.planet VALUES (3, 'earth', 0, 15, 1, true, 1);
INSERT INTO public.planet VALUES (4, 'mars', 24, 10, 2, false, 2);
INSERT INTO public.planet VALUES (5, 'jupiter', 48, 48, 4, false, 6);
INSERT INTO public.planet VALUES (6, 'saturn', 96, 50, 5, false, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 112, 36, 1, false, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 124, 30, 2, false, 1);
INSERT INTO public.planet VALUES (9, 'ceres', 130, 8, 0, false, 2);
INSERT INTO public.planet VALUES (10, 'pluto', 160, 5, 1, false, 2);
INSERT INTO public.planet VALUES (11, 'haumea', 170, 4, 0, false, 1);
INSERT INTO public.planet VALUES (12, 'makemake', 180, 3, 0, false, 1);
INSERT INTO public.planet VALUES (13, 'eris', 190, 2, 0, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'rigel', 1600, true, 'blue supergiant', 1.000, 1);
INSERT INTO public.star VALUES (2, 'canapus', 310, false, 'bright giant', 1.000, 1);
INSERT INTO public.star VALUES (3, 'arcturus', 37, true, 'red giant', 1.070, 1);
INSERT INTO public.star VALUES (4, 'betelguese', 500, false, 'red supergiant', 8.710, 1);
INSERT INTO public.star VALUES (5, 'vega', 25, false, 'variable star', 4.001, 1);
INSERT INTO public.star VALUES (6, 'aldebaran', 65, true, 'giant', 4.039, 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet unique_comet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_comet_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

