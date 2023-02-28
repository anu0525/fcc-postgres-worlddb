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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (193, 'Final', 2018, 4, 2, 1200, 1201);
INSERT INTO public.games VALUES (194, 'Third Place', 2018, 2, 0, 1202, 1203);
INSERT INTO public.games VALUES (195, 'Semi-Final', 2018, 2, 1, 1201, 1203);
INSERT INTO public.games VALUES (196, 'Semi-Final', 2018, 1, 0, 1200, 1202);
INSERT INTO public.games VALUES (197, 'Quarter-Final', 2018, 3, 2, 1201, 1204);
INSERT INTO public.games VALUES (198, 'Quarter-Final', 2018, 2, 0, 1203, 1205);
INSERT INTO public.games VALUES (199, 'Quarter-Final', 2018, 2, 1, 1202, 1206);
INSERT INTO public.games VALUES (200, 'Quarter-Final', 2018, 2, 0, 1200, 1207);
INSERT INTO public.games VALUES (201, 'Eighth-Final', 2018, 2, 1, 1203, 1208);
INSERT INTO public.games VALUES (202, 'Eighth-Final', 2018, 1, 0, 1205, 1209);
INSERT INTO public.games VALUES (203, 'Eighth-Final', 2018, 3, 2, 1202, 1210);
INSERT INTO public.games VALUES (204, 'Eighth-Final', 2018, 2, 0, 1206, 1211);
INSERT INTO public.games VALUES (205, 'Eighth-Final', 2018, 2, 1, 1201, 1212);
INSERT INTO public.games VALUES (206, 'Eighth-Final', 2018, 2, 1, 1204, 1213);
INSERT INTO public.games VALUES (207, 'Eighth-Final', 2018, 2, 1, 1207, 1214);
INSERT INTO public.games VALUES (208, 'Eighth-Final', 2018, 4, 3, 1200, 1215);
INSERT INTO public.games VALUES (209, 'Final', 2014, 1, 0, 1216, 1215);
INSERT INTO public.games VALUES (210, 'Third Place', 2014, 3, 0, 1217, 1206);
INSERT INTO public.games VALUES (211, 'Semi-Final', 2014, 1, 0, 1215, 1217);
INSERT INTO public.games VALUES (212, 'Semi-Final', 2014, 7, 1, 1216, 1206);
INSERT INTO public.games VALUES (213, 'Quarter-Final', 2014, 1, 0, 1217, 1218);
INSERT INTO public.games VALUES (214, 'Quarter-Final', 2014, 1, 0, 1215, 1202);
INSERT INTO public.games VALUES (215, 'Quarter-Final', 2014, 2, 1, 1206, 1208);
INSERT INTO public.games VALUES (216, 'Quarter-Final', 2014, 1, 0, 1216, 1200);
INSERT INTO public.games VALUES (217, 'Eighth-Final', 2014, 2, 1, 1206, 1219);
INSERT INTO public.games VALUES (218, 'Eighth-Final', 2014, 2, 0, 1208, 1207);
INSERT INTO public.games VALUES (219, 'Eighth-Final', 2014, 2, 0, 1200, 1220);
INSERT INTO public.games VALUES (220, 'Eighth-Final', 2014, 2, 1, 1216, 1221);
INSERT INTO public.games VALUES (221, 'Eighth-Final', 2014, 2, 1, 1217, 1211);
INSERT INTO public.games VALUES (222, 'Eighth-Final', 2014, 2, 1, 1218, 1222);
INSERT INTO public.games VALUES (223, 'Eighth-Final', 2014, 1, 0, 1215, 1209);
INSERT INTO public.games VALUES (224, 'Eighth-Final', 2014, 2, 1, 1202, 1223);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1200, 'France');
INSERT INTO public.teams VALUES (1201, 'Croatia');
INSERT INTO public.teams VALUES (1202, 'Belgium');
INSERT INTO public.teams VALUES (1203, 'England');
INSERT INTO public.teams VALUES (1204, 'Russia');
INSERT INTO public.teams VALUES (1205, 'Sweden');
INSERT INTO public.teams VALUES (1206, 'Brazil');
INSERT INTO public.teams VALUES (1207, 'Uruguay');
INSERT INTO public.teams VALUES (1208, 'Colombia');
INSERT INTO public.teams VALUES (1209, 'Switzerland');
INSERT INTO public.teams VALUES (1210, 'Japan');
INSERT INTO public.teams VALUES (1211, 'Mexico');
INSERT INTO public.teams VALUES (1212, 'Denmark');
INSERT INTO public.teams VALUES (1213, 'Spain');
INSERT INTO public.teams VALUES (1214, 'Portugal');
INSERT INTO public.teams VALUES (1215, 'Argentina');
INSERT INTO public.teams VALUES (1216, 'Germany');
INSERT INTO public.teams VALUES (1217, 'Netherlands');
INSERT INTO public.teams VALUES (1218, 'Costa Rica');
INSERT INTO public.teams VALUES (1219, 'Chile');
INSERT INTO public.teams VALUES (1220, 'Nigeria');
INSERT INTO public.teams VALUES (1221, 'Algeria');
INSERT INTO public.teams VALUES (1222, 'Greece');
INSERT INTO public.teams VALUES (1223, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1223, true);


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

