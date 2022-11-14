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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 36);
INSERT INTO public.games VALUES (2, 227, 37);
INSERT INTO public.games VALUES (3, 452, 37);
INSERT INTO public.games VALUES (4, 516, 39);
INSERT INTO public.games VALUES (5, 320, 39);
INSERT INTO public.games VALUES (6, 895, 37);
INSERT INTO public.games VALUES (7, 881, 37);
INSERT INTO public.games VALUES (8, 343, 37);
INSERT INTO public.games VALUES (9, 124, 44);
INSERT INTO public.games VALUES (10, 557, 44);
INSERT INTO public.games VALUES (11, 475, 46);
INSERT INTO public.games VALUES (12, 616, 46);
INSERT INTO public.games VALUES (13, 485, 44);
INSERT INTO public.games VALUES (14, 254, 44);
INSERT INTO public.games VALUES (15, 114, 44);
INSERT INTO public.games VALUES (16, 511, 51);
INSERT INTO public.games VALUES (17, 40, 51);
INSERT INTO public.games VALUES (18, 888, 53);
INSERT INTO public.games VALUES (19, 431, 53);
INSERT INTO public.games VALUES (20, 674, 51);
INSERT INTO public.games VALUES (21, 496, 51);
INSERT INTO public.games VALUES (22, 186, 51);
INSERT INTO public.games VALUES (23, 139, 58);
INSERT INTO public.games VALUES (24, 932, 58);
INSERT INTO public.games VALUES (25, 389, 60);
INSERT INTO public.games VALUES (26, 97, 60);
INSERT INTO public.games VALUES (27, 166, 58);
INSERT INTO public.games VALUES (28, 303, 58);
INSERT INTO public.games VALUES (29, 704, 58);
INSERT INTO public.games VALUES (30, 488, 65);
INSERT INTO public.games VALUES (31, 910, 65);
INSERT INTO public.games VALUES (32, 304, 67);
INSERT INTO public.games VALUES (33, 387, 67);
INSERT INTO public.games VALUES (34, 570, 65);
INSERT INTO public.games VALUES (35, 339, 65);
INSERT INTO public.games VALUES (36, 515, 65);
INSERT INTO public.games VALUES (37, 36, 72);
INSERT INTO public.games VALUES (38, 962, 72);
INSERT INTO public.games VALUES (39, 293, 74);
INSERT INTO public.games VALUES (40, 964, 74);
INSERT INTO public.games VALUES (41, 806, 72);
INSERT INTO public.games VALUES (42, 875, 72);
INSERT INTO public.games VALUES (43, 340, 72);
INSERT INTO public.games VALUES (44, 721, 79);
INSERT INTO public.games VALUES (45, 19, 79);
INSERT INTO public.games VALUES (46, 191, 81);
INSERT INTO public.games VALUES (47, 134, 81);
INSERT INTO public.games VALUES (48, 516, 79);
INSERT INTO public.games VALUES (49, 434, 79);
INSERT INTO public.games VALUES (50, 777, 79);
INSERT INTO public.games VALUES (51, 267, 86);
INSERT INTO public.games VALUES (52, 836, 86);
INSERT INTO public.games VALUES (53, 988, 88);
INSERT INTO public.games VALUES (54, 47, 88);
INSERT INTO public.games VALUES (55, 779, 86);
INSERT INTO public.games VALUES (56, 142, 86);
INSERT INTO public.games VALUES (57, 589, 86);
INSERT INTO public.games VALUES (58, 331, 93);
INSERT INTO public.games VALUES (59, 193, 93);
INSERT INTO public.games VALUES (60, 79, 95);
INSERT INTO public.games VALUES (61, 420, 95);
INSERT INTO public.games VALUES (62, 348, 93);
INSERT INTO public.games VALUES (63, 99, 93);
INSERT INTO public.games VALUES (64, 469, 93);
INSERT INTO public.games VALUES (65, 689, 100);
INSERT INTO public.games VALUES (66, 447, 100);
INSERT INTO public.games VALUES (67, 55, 102);
INSERT INTO public.games VALUES (68, 186, 102);
INSERT INTO public.games VALUES (69, 271, 100);
INSERT INTO public.games VALUES (70, 521, 100);
INSERT INTO public.games VALUES (71, 87, 100);
INSERT INTO public.games VALUES (72, 895, 107);
INSERT INTO public.games VALUES (73, 978, 107);
INSERT INTO public.games VALUES (74, 169, 109);
INSERT INTO public.games VALUES (75, 990, 109);
INSERT INTO public.games VALUES (76, 219, 107);
INSERT INTO public.games VALUES (77, 208, 107);
INSERT INTO public.games VALUES (78, 671, 107);
INSERT INTO public.games VALUES (79, 948, 115);
INSERT INTO public.games VALUES (80, 300, 115);
INSERT INTO public.games VALUES (81, 467, 116);
INSERT INTO public.games VALUES (82, 367, 116);
INSERT INTO public.games VALUES (83, 941, 115);
INSERT INTO public.games VALUES (84, 328, 115);
INSERT INTO public.games VALUES (85, 506, 115);
INSERT INTO public.games VALUES (86, 228, 117);
INSERT INTO public.games VALUES (87, 912, 117);
INSERT INTO public.games VALUES (88, 198, 118);
INSERT INTO public.games VALUES (89, 644, 118);
INSERT INTO public.games VALUES (90, 655, 117);
INSERT INTO public.games VALUES (91, 22, 117);
INSERT INTO public.games VALUES (92, 61, 117);
INSERT INTO public.games VALUES (93, 832, 119);
INSERT INTO public.games VALUES (94, 654, 119);
INSERT INTO public.games VALUES (95, 283, 120);
INSERT INTO public.games VALUES (96, 33, 120);
INSERT INTO public.games VALUES (97, 118, 119);
INSERT INTO public.games VALUES (98, 629, 119);
INSERT INTO public.games VALUES (99, 889, 119);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1668456267250');
INSERT INTO public.users VALUES (93, 'user_1668457178814');
INSERT INTO public.users VALUES (3, 'user_1668456267249');
INSERT INTO public.users VALUES (95, 'user_1668457178813');
INSERT INTO public.users VALUES (8, 'Rafa');
INSERT INTO public.users VALUES (100, 'user_1668457182035');
INSERT INTO public.users VALUES (12, 'user_1668456665348');
INSERT INTO public.users VALUES (14, 'user_1668456665347');
INSERT INTO public.users VALUES (102, 'user_1668457182034');
INSERT INTO public.users VALUES (19, 'user_1668456805130');
INSERT INTO public.users VALUES (21, 'user_1668456805129');
INSERT INTO public.users VALUES (107, 'user_1668457186026');
INSERT INTO public.users VALUES (109, 'user_1668457186025');
INSERT INTO public.users VALUES (26, 'user_1668456861307');
INSERT INTO public.users VALUES (28, 'user_1668456861306');
INSERT INTO public.users VALUES (115, 'user_1668457585682');
INSERT INTO public.users VALUES (116, 'user_1668457585681');
INSERT INTO public.users VALUES (117, 'user_1668457660043');
INSERT INTO public.users VALUES (35, 'David');
INSERT INTO public.users VALUES (36, 'david');
INSERT INTO public.users VALUES (37, 'user_1668457106237');
INSERT INTO public.users VALUES (118, 'user_1668457660042');
INSERT INTO public.users VALUES (39, 'user_1668457106236');
INSERT INTO public.users VALUES (119, 'user_1668457669533');
INSERT INTO public.users VALUES (120, 'user_1668457669532');
INSERT INTO public.users VALUES (44, 'user_1668457123521');
INSERT INTO public.users VALUES (46, 'user_1668457123520');
INSERT INTO public.users VALUES (51, 'user_1668457131951');
INSERT INTO public.users VALUES (53, 'user_1668457131950');
INSERT INTO public.users VALUES (58, 'user_1668457145961');
INSERT INTO public.users VALUES (60, 'user_1668457145960');
INSERT INTO public.users VALUES (65, 'user_1668457149353');
INSERT INTO public.users VALUES (67, 'user_1668457149352');
INSERT INTO public.users VALUES (72, 'user_1668457156643');
INSERT INTO public.users VALUES (74, 'user_1668457156642');
INSERT INTO public.users VALUES (79, 'user_1668457160265');
INSERT INTO public.users VALUES (81, 'user_1668457160264');
INSERT INTO public.users VALUES (86, 'user_1668457170664');
INSERT INTO public.users VALUES (88, 'user_1668457170663');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 99, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 120, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

