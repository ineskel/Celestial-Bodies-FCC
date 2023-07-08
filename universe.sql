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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_desc text NOT NULL,
    galaxy_classification character varying(10) NOT NULL,
    mass_in_sun_masses character varying(10) NOT NULL
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    moon_desc text NOT NULL,
    radius_moon integer NOT NULL,
    distance_from_earth numeric(10,1) NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    would_live_in boolean NOT NULL,
    planet_desc text NOT NULL,
    radius integer NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    is_cool boolean NOT NULL,
    star_desc text NOT NULL,
    spectral_type character varying(10) NOT NULL
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
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    table5_id integer NOT NULL,
    name character varying(30) NOT NULL,
    necessary character varying(50) NOT NULL
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_table5_id_seq OWNED BY public.table5.table5_id;


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
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('The Milky Way', 1, 'The galaxy in which I will raise my children', 'SBc', '1.5 tr');
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'The galaxy closest to that in which I will raise my children', 'SA(s)b', '1.2 b');
INSERT INTO public.galaxy VALUES ('Cygnus A', 3, 'This is called a radio galaxy, and it is also an elliptical galaxy. Very cool.', 'elliptical', '100 b');
INSERT INTO public.galaxy VALUES ('Magenllanic Clouds', 4, 'This is two different galaxies, and they are called dwarf irregular galaxies. Whatever that means???', 'Dw irr gal', '10 b');
INSERT INTO public.galaxy VALUES ('Hoags Object', 5, 'I am obsessed with the name of this galaxy.', 'Ring gal', '700 b');
INSERT INTO public.galaxy VALUES ('Virgo Cluster', 6, 'This is a group of galaxies over 5 billion years old.', 'Cluster', '1.2*10^15');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon 1', 1, 'The first moons I ever encountered were his eyes.', 50, 4.5);
INSERT INTO public.moon VALUES ('Moon 2', 2, 'but alas, they were not the last, thought I would not have minded it if there were.', 5000, 1.2);
INSERT INTO public.moon VALUES ('Moon 3', 3, 'as it were, he left and never came back. He is now a moon shining upon an Arab desertscape.', 85, 5.6);
INSERT INTO public.moon VALUES ('Moon 4', 4, 'this is not a tragedy, mind you. Perhaps things are most precious in their loss. Why keep something if it is truly special, if time has a way of making the brightest star lose its sheen?', 78, 9.4);
INSERT INTO public.moon VALUES ('Moon 5', 5, 'And the stars, oh, the stars. I have seen stars in human form: I might dare to call myself one. I might dare to be that foolish.', 654, 6.5);
INSERT INTO public.moon VALUES ('Moon 6', 6, 'Everyone I love has a strange way of escaping me to become one with the night sky.', 741, 7.4);
INSERT INTO public.moon VALUES ('Moon 7', 7, 'When I look up, I count the smiles that once graced my days.', 852, 8.5);
INSERT INTO public.moon VALUES ('Moon 8', 8, 'This is not a tragedy, yes...', 863, 8.6);
INSERT INTO public.moon VALUES ('Moon 9', 9, 'but I still cry at the sight every other night.', 456, 4.6);
INSERT INTO public.moon VALUES ('Moon 10', 10, 'Maybe only to remind myself I am still capable of such emotions, of being so affected.', 753, 7.5);
INSERT INTO public.moon VALUES ('Moon 11', 11, 'Or maybe it is as insincere as these smiles.', 851, 8.5);
INSERT INTO public.moon VALUES ('Moon 12', 12, 'As it were, I do not care.', 742, 7.4);
INSERT INTO public.moon VALUES ('Moon 13', 13, 'Or do I?', 867, 8.7);
INSERT INTO public.moon VALUES ('Moon 14', 14, 'Anyway...', 502, 5.0);
INSERT INTO public.moon VALUES ('Moon 15', 15, 'At this age, it is better to keep quiet.', 8055, 8.1);
INSERT INTO public.moon VALUES ('Moon 16', 16, 'Hushhh...', 410, 4.8);
INSERT INTO public.moon VALUES ('Moon 17', 17, '...', 4933, 4.9);
INSERT INTO public.moon VALUES ('Moon 18', 18, 'ah...', 45, 5.6);
INSERT INTO public.moon VALUES ('Moon 19', 19, 'At long last...', 7777, 7.8);
INSERT INTO public.moon VALUES ('Moon 20', 20, 'Quiet.', 1000, 1.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, 'The place where magical things happen!', 6400);
INSERT INTO public.planet VALUES ('Mars', 2, false, 'Elon Musk wants to take us on a magical journey here, how lame', 3400);
INSERT INTO public.planet VALUES ('Venus', 3, true, 'Women come from here, or whatever that book said idk', 6052);
INSERT INTO public.planet VALUES ('Jupiter', 4, false, 'It is named after Zeus so it really cannot be that good to live in.', 70000);
INSERT INTO public.planet VALUES ('Neptune', 5, false, 'I do not want to exist anywhere named after a deity in Greek or Roman mythology ngl', 24600);
INSERT INTO public.planet VALUES ('Mercury', 6, false, 'I wanna DRINK MERCURY!', 2439);
INSERT INTO public.planet VALUES ('Uranus', 7, false, 'the joke makes itself lmao', 25362);
INSERT INTO public.planet VALUES ('Saturn', 8, false, 'Cool rings in this one', 58232);
INSERT INTO public.planet VALUES ('Planet 9', 9, true, 'Filling the void...', 50000);
INSERT INTO public.planet VALUES ('Planet 10', 10, false, 'There is an emptiness within us all, but...', 40);
INSERT INTO public.planet VALUES ('Planet 11', 11, false, 'But it cannot be filled so easily, and so...', 42000);
INSERT INTO public.planet VALUES ('Planet 12', 12, true, 'We fill it whatever way we can but to no avail', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Ines', 1, true, 'I am very luch a star in a distant galaxy.', 'vibes');
INSERT INTO public.star VALUES ('Yasmine', 2, true, 'My sister is also a star in a distant galaxy.', 'coo');
INSERT INTO public.star VALUES ('Sirius', 3, false, 'This is the only star I know by name ngl', 'A1');
INSERT INTO public.star VALUES ('Polaris', 4, false, 'The brightest star in the sky but also no I thibk that is Sirius lolzor', 'F7Ib-II');
INSERT INTO public.star VALUES ('Nembus', 5, true, 'This should be a star in Adromeda, but you can never know.', 'K3');
INSERT INTO public.star VALUES ('Canopus', 6, false, 'This star exists in the Large Magellanic Cloud.', 'A9-II');


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 'How did we get here?', 'When I used to know you so well...');
INSERT INTO public.table5 VALUES (2, 'Oh I never meant to brag...', 'But I''ve got him where I want him now');
INSERT INTO public.table5 VALUES (3, 'Wake me up...', 'Wake me up inside!');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table5_table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_table5_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: table5 table5_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_name_key UNIQUE (name);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


--
-- PostgreSQL database dump complete
--

