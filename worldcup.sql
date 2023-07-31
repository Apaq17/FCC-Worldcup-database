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
    round character varying(255) NOT NULL,
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (129, 2018, 'Final', 4, 2, 601, 602);
INSERT INTO public.games VALUES (130, 2018, 'Third Place', 2, 0, 603, 604);
INSERT INTO public.games VALUES (131, 2018, 'Semi-Final', 2, 1, 602, 604);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 1, 0, 601, 603);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 3, 2, 602, 605);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 2, 0, 604, 606);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 2, 1, 603, 607);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 2, 0, 601, 608);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 2, 1, 604, 609);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 1, 0, 606, 610);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 3, 2, 603, 611);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 2, 0, 607, 612);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 2, 1, 602, 613);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 2, 1, 605, 614);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 2, 1, 608, 615);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 4, 3, 601, 616);
INSERT INTO public.games VALUES (145, 2014, 'Final', 1, 0, 617, 616);
INSERT INTO public.games VALUES (146, 2014, 'Third Place', 3, 0, 618, 607);
INSERT INTO public.games VALUES (147, 2014, 'Semi-Final', 1, 0, 616, 618);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 7, 1, 617, 607);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 1, 0, 618, 619);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 1, 0, 616, 603);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 2, 1, 607, 609);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 1, 0, 617, 601);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 2, 1, 607, 620);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 2, 0, 609, 608);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 2, 0, 601, 621);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 2, 1, 617, 622);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 2, 1, 618, 612);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 2, 1, 619, 623);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 1, 0, 616, 610);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 2, 1, 603, 624);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (601, 'France');
INSERT INTO public.teams VALUES (602, 'Croatia');
INSERT INTO public.teams VALUES (603, 'Belgium');
INSERT INTO public.teams VALUES (604, 'England');
INSERT INTO public.teams VALUES (605, 'Russia');
INSERT INTO public.teams VALUES (606, 'Sweden');
INSERT INTO public.teams VALUES (607, 'Brazil');
INSERT INTO public.teams VALUES (608, 'Uruguay');
INSERT INTO public.teams VALUES (609, 'Colombia');
INSERT INTO public.teams VALUES (610, 'Switzerland');
INSERT INTO public.teams VALUES (611, 'Japan');
INSERT INTO public.teams VALUES (612, 'Mexico');
INSERT INTO public.teams VALUES (613, 'Denmark');
INSERT INTO public.teams VALUES (614, 'Spain');
INSERT INTO public.teams VALUES (615, 'Portugal');
INSERT INTO public.teams VALUES (616, 'Argentina');
INSERT INTO public.teams VALUES (617, 'Germany');
INSERT INTO public.teams VALUES (618, 'Netherlands');
INSERT INTO public.teams VALUES (619, 'Costa Rica');
INSERT INTO public.teams VALUES (620, 'Chile');
INSERT INTO public.teams VALUES (621, 'Nigeria');
INSERT INTO public.teams VALUES (622, 'Algeria');
INSERT INTO public.teams VALUES (623, 'Greece');
INSERT INTO public.teams VALUES (624, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 162, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 636, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

