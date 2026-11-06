--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: craft; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.craft (
    craft_id integer NOT NULL,
    name character varying(50) NOT NULL,
    launch_year integer,
    mission_type text,
    planet_id integer
);


ALTER TABLE public.craft OWNER TO freecodecamp;

--
-- Name: craft_craft_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.craft_craft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.craft_craft_id_seq OWNER TO freecodecamp;

--
-- Name: craft_craft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.craft_craft_id_seq OWNED BY public.craft.craft_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    distance_from_earth_mly integer,
    notable_feature text
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
    name character varying(50) NOT NULL,
    distance_from_earth_in_million_km numeric,
    description text NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planets_type character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_million_years integer,
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
    name character varying(50) NOT NULL,
    spectral_type character varying(50) NOT NULL,
    distance_from_earth_ly integer,
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
-- Name: craft craft_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craft ALTER COLUMN craft_id SET DEFAULT nextval('public.craft_craft_id_seq'::regclass);


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
-- Data for Name: craft; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.craft VALUES (1, 'Voyager I', 1997, 'Exploration', 6);
INSERT INTO public.craft VALUES (2, 'Mars Rover', 2003, 'Research', 2);
INSERT INTO public.craft VALUES (3, 'ExoGenesis', 2099, 'Colonization', 7);
INSERT INTO public.craft VALUES (4, 'Luna Scout', 2023, 'Survey', 10);
INSERT INTO public.craft VALUES (5, 'Nebula Drifter', 2045, 'Exploration', 9);
INSERT INTO public.craft VALUES (6, 'Titan Harvester', 3045, 'Resource Mining', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 'Home galaxy of Earth');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 3, 'Closest spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3, 'Third largest in local group');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Eliptical', 54, 'Hosts a supermassive black hole');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'Spiral', 23, 'Famous for it structure');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Spiral', 31, 'Bright central bulge');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 0.384, 'Earth only natural satellite', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 225, 'Larger of Mars two moons', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 225, 'Smaller, more distant moon', 2);
INSERT INTO public.moon VALUES (4, 'Io', 930, 'Most volcanically active body in the solar system', 6);
INSERT INTO public.moon VALUES (5, 'Europa', 630, 'May harbor a subsurface ocean', 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', 665, 'Largest moon in the solar system', 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 968, 'Heavily cratered, ancient surface', 6);
INSERT INTO public.moon VALUES (8, 'Titan', 1200, 'Largest moon of Saturn, has thick atmosphere', 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 1272, 'Shoots water vapor from its icy surface', 4);
INSERT INTO public.moon VALUES (10, 'Rhea', 1300, 'Second-largest moon of Saturn', 4);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1300, 'Has a striking two-tone coloration', 4);
INSERT INTO public.moon VALUES (12, 'Titania', 2700, 'Largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 2700, 'Second-largest Uranian moon', 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 2700, 'Brightest of Uranus moons', 7);
INSERT INTO public.moon VALUES (15, 'Triton', 4500, 'Retrograde orbit, likely a captured object', 5);
INSERT INTO public.moon VALUES (16, 'Proteus', 4354, 'Second-largest Neptunian moon', 5);
INSERT INTO public.moon VALUES (17, 'Charon', 7500, 'So large it forms a binary system with Pluto', 9);
INSERT INTO public.moon VALUES (18, 'Hydra', 7500, 'Outermost of Plutos small moons', 9);
INSERT INTO public.moon VALUES (19, 'Dysnomia', 10000, 'Only known moon of Eris', 10);
INSERT INTO public.moon VALUES (20, 'Hiiaka', 6430, 'Larger of Haumea two moons, rich in water ice', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', true, true, 4503, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', false, true, 4503, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', 'Terrestrial', false, true, 4503, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', false, true, 4543, 3);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Ice Giant', false, true, 4543, 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Gas Giant', false, true, 4565, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, true, 4563, 3);
INSERT INTO public.planet VALUES (8, 'Venus', 'Terrestrial', false, true, 4503, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', false, true, 4500, 4);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf Planet', false, true, 4500, 5);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Dwarf Planet', false, true, 4500, 6);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Dwarf Planet', false, true, 4500, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 0, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A1V', 9, 1);
INSERT INTO public.star VALUES (3, 'Vega', 'A0V', 25, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'M5.5Ve', 4, 1);
INSERT INTO public.star VALUES (5, 'Errai', 'K1IV', 45, 2);
INSERT INTO public.star VALUES (6, 'Alpheratz', 'B8IVpMnHg', 97, 2);


--
-- Name: craft_craft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.craft_craft_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: craft craft_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craft
    ADD CONSTRAINT craft_pkey PRIMARY KEY (craft_id);


--
-- Name: craft craft_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craft
    ADD CONSTRAINT craft_unique_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


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
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: craft fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craft
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

