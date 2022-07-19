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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    count_stars numeric(10,1),
    name character varying(255) NOT NULL
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    type text,
    name character varying(255),
    count_planet integer,
    kolumna1 integer NOT NULL,
    kolumna2 integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    galaxy_id integer NOT NULL,
    earth_moon boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    residential boolean,
    name character varying(255),
    star_id integer NOT NULL,
    type text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    constelation text,
    description text,
    name character varying(255),
    kolumna1 integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 25.0, 'konstelacjaA');
INSERT INTO public.constelation VALUES (2, 18.0, 'konstelacjaB');
INSERT INTO public.constelation VALUES (3, 8.0, 'konstelacjaC');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 1, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (2, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (3, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (4, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (5, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (6, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (7, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (8, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (9, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (10, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (11, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (12, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (13, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (14, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (15, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (16, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (17, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (18, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (19, NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (20, NULL, 1, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 1, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 2, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 1, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 3, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 3, NULL, NULL, NULL, 7);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


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
-- Name: star star_kolumna1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_kolumna1_key UNIQUE (kolumna1);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey2 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey3 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey4 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

