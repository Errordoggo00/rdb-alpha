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
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(100) NOT NULL
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

INSERT INTO public.games VALUES (541, 2018, 'Final', 560, 561, 4, 2);
INSERT INTO public.games VALUES (542, 2018, 'Third Place', 562, 563, 2, 0);
INSERT INTO public.games VALUES (543, 2018, 'Semi-Final', 561, 563, 2, 1);
INSERT INTO public.games VALUES (544, 2018, 'Semi-Final', 560, 562, 1, 0);
INSERT INTO public.games VALUES (545, 2018, 'Quarter-Final', 561, 564, 3, 2);
INSERT INTO public.games VALUES (546, 2018, 'Quarter-Final', 563, 565, 2, 0);
INSERT INTO public.games VALUES (547, 2018, 'Quarter-Final', 562, 566, 2, 1);
INSERT INTO public.games VALUES (548, 2018, 'Quarter-Final', 560, 567, 2, 0);
INSERT INTO public.games VALUES (549, 2018, 'Eighth-Final', 563, 568, 2, 1);
INSERT INTO public.games VALUES (550, 2018, 'Eighth-Final', 565, 569, 1, 0);
INSERT INTO public.games VALUES (551, 2018, 'Eighth-Final', 562, 570, 3, 2);
INSERT INTO public.games VALUES (552, 2018, 'Eighth-Final', 566, 571, 2, 0);
INSERT INTO public.games VALUES (553, 2018, 'Eighth-Final', 561, 572, 2, 1);
INSERT INTO public.games VALUES (554, 2018, 'Eighth-Final', 564, 573, 2, 1);
INSERT INTO public.games VALUES (555, 2018, 'Eighth-Final', 567, 574, 2, 1);
INSERT INTO public.games VALUES (556, 2018, 'Eighth-Final', 560, 575, 4, 3);
INSERT INTO public.games VALUES (557, 2014, 'Final', 576, 575, 1, 0);
INSERT INTO public.games VALUES (558, 2014, 'Third Place', 577, 566, 3, 0);
INSERT INTO public.games VALUES (559, 2014, 'Semi-Final', 575, 577, 1, 0);
INSERT INTO public.games VALUES (560, 2014, 'Semi-Final', 576, 566, 7, 1);
INSERT INTO public.games VALUES (561, 2014, 'Quarter-Final', 577, 578, 1, 0);
INSERT INTO public.games VALUES (562, 2014, 'Quarter-Final', 575, 562, 1, 0);
INSERT INTO public.games VALUES (563, 2014, 'Quarter-Final', 566, 568, 2, 1);
INSERT INTO public.games VALUES (564, 2014, 'Quarter-Final', 576, 560, 1, 0);
INSERT INTO public.games VALUES (565, 2014, 'Eighth-Final', 566, 579, 2, 1);
INSERT INTO public.games VALUES (566, 2014, 'Eighth-Final', 568, 567, 2, 0);
INSERT INTO public.games VALUES (567, 2014, 'Eighth-Final', 560, 580, 2, 0);
INSERT INTO public.games VALUES (568, 2014, 'Eighth-Final', 576, 581, 2, 1);
INSERT INTO public.games VALUES (569, 2014, 'Eighth-Final', 577, 571, 2, 1);
INSERT INTO public.games VALUES (570, 2014, 'Eighth-Final', 578, 582, 2, 1);
INSERT INTO public.games VALUES (571, 2014, 'Eighth-Final', 575, 569, 1, 0);
INSERT INTO public.games VALUES (572, 2014, 'Eighth-Final', 562, 583, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (560, 'France');
INSERT INTO public.teams VALUES (561, 'Croatia');
INSERT INTO public.teams VALUES (562, 'Belgium');
INSERT INTO public.teams VALUES (563, 'England');
INSERT INTO public.teams VALUES (564, 'Russia');
INSERT INTO public.teams VALUES (565, 'Sweden');
INSERT INTO public.teams VALUES (566, 'Brazil');
INSERT INTO public.teams VALUES (567, 'Uruguay');
INSERT INTO public.teams VALUES (568, 'Colombia');
INSERT INTO public.teams VALUES (569, 'Switzerland');
INSERT INTO public.teams VALUES (570, 'Japan');
INSERT INTO public.teams VALUES (571, 'Mexico');
INSERT INTO public.teams VALUES (572, 'Denmark');
INSERT INTO public.teams VALUES (573, 'Spain');
INSERT INTO public.teams VALUES (574, 'Portugal');
INSERT INTO public.teams VALUES (575, 'Argentina');
INSERT INTO public.teams VALUES (576, 'Germany');
INSERT INTO public.teams VALUES (577, 'Netherlands');
INSERT INTO public.teams VALUES (578, 'Costa Rica');
INSERT INTO public.teams VALUES (579, 'Chile');
INSERT INTO public.teams VALUES (580, 'Nigeria');
INSERT INTO public.teams VALUES (581, 'Algeria');
INSERT INTO public.teams VALUES (582, 'Greece');
INSERT INTO public.teams VALUES (583, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 572, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 583, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: games fk_opponent_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_teams FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

