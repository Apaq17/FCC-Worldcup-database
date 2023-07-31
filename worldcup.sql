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

INSERT INTO public.games VALUES (227, 2018, 'Final', 4, 2, 685, 686);
INSERT INTO public.games VALUES (228, 2018, 'Third Place', 2, 0, 687, 688);
INSERT INTO public.games VALUES (229, 2018, 'Semi-Final', 2, 1, 686, 688);
INSERT INTO public.games VALUES (230, 2018, 'Semi-Final', 1, 0, 685, 687);
INSERT INTO public.games VALUES (231, 2018, 'Quarter-Final', 3, 2, 686, 689);
INSERT INTO public.games VALUES (232, 2018, 'Quarter-Final', 2, 0, 688, 690);
INSERT INTO public.games VALUES (233, 2018, 'Quarter-Final', 2, 1, 687, 691);
INSERT INTO public.games VALUES (234, 2018, 'Quarter-Final', 2, 0, 685, 692);
INSERT INTO public.games VALUES (235, 2018, 'Eighth-Final', 2, 1, 688, 693);
INSERT INTO public.games VALUES (236, 2018, 'Eighth-Final', 1, 0, 690, 694);
INSERT INTO public.games VALUES (237, 2018, 'Eighth-Final', 3, 2, 687, 695);
INSERT INTO public.games VALUES (238, 2018, 'Eighth-Final', 2, 0, 691, 696);
INSERT INTO public.games VALUES (239, 2018, 'Eighth-Final', 2, 1, 686, 697);
INSERT INTO public.games VALUES (240, 2018, 'Eighth-Final', 2, 1, 689, 698);
INSERT INTO public.games VALUES (241, 2018, 'Eighth-Final', 2, 1, 692, 699);
INSERT INTO public.games VALUES (242, 2018, 'Eighth-Final', 4, 3, 685, 700);
INSERT INTO public.games VALUES (243, 2014, 'Final', 1, 0, 701, 700);
INSERT INTO public.games VALUES (244, 2014, 'Third Place', 3, 0, 702, 691);
INSERT INTO public.games VALUES (245, 2014, 'Semi-Final', 1, 0, 700, 702);
INSERT INTO public.games VALUES (246, 2014, 'Semi-Final', 7, 1, 701, 691);
INSERT INTO public.games VALUES (247, 2014, 'Quarter-Final', 1, 0, 702, 703);
INSERT INTO public.games VALUES (248, 2014, 'Quarter-Final', 1, 0, 700, 687);
INSERT INTO public.games VALUES (249, 2014, 'Quarter-Final', 2, 1, 691, 693);
INSERT INTO public.games VALUES (250, 2014, 'Quarter-Final', 1, 0, 701, 685);
INSERT INTO public.games VALUES (251, 2014, 'Eighth-Final', 2, 1, 691, 704);
INSERT INTO public.games VALUES (252, 2014, 'Eighth-Final', 2, 0, 693, 692);
INSERT INTO public.games VALUES (253, 2014, 'Eighth-Final', 2, 0, 685, 705);
INSERT INTO public.games VALUES (254, 2014, 'Eighth-Final', 2, 1, 701, 706);
INSERT INTO public.games VALUES (255, 2014, 'Eighth-Final', 2, 1, 702, 696);
INSERT INTO public.games VALUES (256, 2014, 'Eighth-Final', 2, 1, 703, 707);
INSERT INTO public.games VALUES (257, 2014, 'Eighth-Final', 1, 0, 700, 694);
INSERT INTO public.games VALUES (258, 2014, 'Eighth-Final', 2, 1, 687, 708);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (685, 'France');
INSERT INTO public.teams VALUES (686, 'Croatia');
INSERT INTO public.teams VALUES (687, 'Belgium');
INSERT INTO public.teams VALUES (688, 'England');
INSERT INTO public.teams VALUES (689, 'Russia');
INSERT INTO public.teams VALUES (690, 'Sweden');
INSERT INTO public.teams VALUES (691, 'Brazil');
INSERT INTO public.teams VALUES (692, 'Uruguay');
INSERT INTO public.teams VALUES (693, 'Colombia');
INSERT INTO public.teams VALUES (694, 'Switzerland');
INSERT INTO public.teams VALUES (695, 'Japan');
INSERT INTO public.teams VALUES (696, 'Mexico');
INSERT INTO public.teams VALUES (697, 'Denmark');
INSERT INTO public.teams VALUES (698, 'Spain');
INSERT INTO public.teams VALUES (699, 'Portugal');
INSERT INTO public.teams VALUES (700, 'Argentina');
INSERT INTO public.teams VALUES (701, 'Germany');
INSERT INTO public.teams VALUES (702, 'Netherlands');
INSERT INTO public.teams VALUES (703, 'Costa Rica');
INSERT INTO public.teams VALUES (704, 'Chile');
INSERT INTO public.teams VALUES (705, 'Nigeria');
INSERT INTO public.teams VALUES (706, 'Algeria');
INSERT INTO public.teams VALUES (707, 'Greece');
INSERT INTO public.teams VALUES (708, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 258, true);


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

SELECT pg_catalog.setval('public.teams_team_id_seq', 708, true);


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

