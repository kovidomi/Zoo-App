--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-10-30 22:20:41

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
-- TOC entry 207 (class 1259 OID 16443)
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    animal_type_id bigint NOT NULL,
    habitat character varying
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16441)
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_id_seq OWNER TO postgres;

--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 206
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- TOC entry 209 (class 1259 OID 16454)
-- Name: animal_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal_type (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.animal_type OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16452)
-- Name: animal_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_type_id_seq OWNER TO postgres;

--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 208
-- Name: animal_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_type_id_seq OWNED BY public.animal_type.id;


--
-- TOC entry 205 (class 1259 OID 16426)
-- Name: authority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authority (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.authority OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16424)
-- Name: authority_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authority_id_seq OWNER TO postgres;

--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 204
-- Name: authority_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authority_id_seq OWNED BY public.authority.id;


--
-- TOC entry 203 (class 1259 OID 16414)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying NOT NULL,
    authority_id bigint,
    password character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16410)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 202
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;


--
-- TOC entry 2711 (class 2604 OID 16446)
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 16457)
-- Name: animal_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal_type ALTER COLUMN id SET DEFAULT nextval('public.animal_type_id_seq'::regclass);


--
-- TOC entry 2710 (class 2604 OID 16429)
-- Name: authority id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority ALTER COLUMN id SET DEFAULT nextval('public.authority_id_seq'::regclass);


--
-- TOC entry 2709 (class 2604 OID 16417)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 2856 (class 0 OID 16443)
-- Dependencies: 207
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animal (id, name, description, animal_type_id, habitat) FROM stdin;
1	Bear	Bears are large dog like mammals found all around the world. There are eight different species of bear that are found in a wide range of habitats in both the Northern and Southern Hemispheres, mainly the Americas, Europe and Asia.	1	Forest and mountainous regions
2	Dwarf Crocodile	The Dwarf Crocodile is a small species of crocodile that is natively found in the rainforests of West Africa. The Dwarf Crocodile is the smallest species of crocodile in the world and is also one of the most distinctive with a short, broad snout and tough scales that cover their entire black body.	2	Rainforest rivers and swamps
3	Vampire Bat	The Vampire Bat is a small species of Bat, native to the tropics of Central and South America. There are three recognised sub-species of Vampire Bat, all of which are in a genus of their own despite their obvious similarities.	1	Tropical and subtropical regions
4	Snowy Owl	The snowy owl is also known as the Arctic owl or the great white owl. The snowy owl is primarily found within the Arctic Circle with the range of the snowy owl ranging across Canada, Greenland, Europe and Asia. The snowy owl is the official bird of Quebec in the North-east of Canada.	3	Woodland within the Arctic tundra
5	Magpie	The magpie is a small to medium sized bird that is found across the globe. The magpie is most closely related to the crow, but the magpie has highly distinguishable black and white feathers which make magpies easy to spot.	3	Open woodland, grasslands and savannas
6	Black Widow Spider	There are three main species of black widow spider, all of which have very similar characteristics and inhabit areas in Northern America and parts of Mexico. Until very recently all three species of black widow spider were classified as one but recent research shows that as the species inhabit different areas, the three species of black widow spider have adapted to their environment in different ways.	4	Urban, temperate forest and woodland
7	Red Knee Tarantula	The red knee tarantula (also known as the red-kneed tarantula) is a type of burrowing tarantula that inhabits the pacific mountains of Mexico. The red knee tarantula is most well known for its hairy body and the red bands that are along its legs.	4	Semi-desert and scrub land
8	Scorpion	The scorpion is an eight-legged carnivorous anthropod, that are found worldwide. There are around 2,000 different species of known scorpion found in most countries around the world today.	4	Dry desert, grassland, savanna and tropical jungles
9	Piranha	The piranha is a type of freshwater fish found in the rivers of the South American jungles. The piranha can be found in nearly every country in South America and the piranha have been appearing more recently in the south of the USA.	5	Fast flowing rivers and Amazon basin
12	Tiger Salamander	The tiger salamander is a small species of salamander, found inhabiting wetland habitats across North America. The tiger salamander can be easily distinguished from other species of salamander by the dark-coloured markings on the skin of the tiger salamander.	6	Wetlands, rivers and streams
\.


--
-- TOC entry 2858 (class 0 OID 16454)
-- Dependencies: 209
-- Data for Name: animal_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animal_type (id, name) FROM stdin;
1	Mammal
2	Reptile
3	Bird
4	Insect
5	Fish
6	Amphibian
\.


--
-- TOC entry 2854 (class 0 OID 16426)
-- Dependencies: 205
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authority (id, name) FROM stdin;
1	Administrator
2	Guest
\.


--
-- TOC entry 2852 (class 0 OID 16414)
-- Dependencies: 203
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, authority_id, password) FROM stdin;
1	adminTest	1	$2a$10$19MZeRTk.dBQX6LoX0ZQi.aRNFuHqxYfrtTMDxxQUPDGUPx3YaPHG
2	Guest123456	2	$2a$10$o40CLDrdu7G3lBhiTWckDe4CPoRm8bB45wHCe313oaofMFCMA0OQO
\.


--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 206
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_id_seq', 12, true);


--
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 208
-- Name: animal_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_type_id_seq', 6, true);


--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 204
-- Name: authority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authority_id_seq', 2, true);


--
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 202
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 2, true);


--
-- TOC entry 2719 (class 2606 OID 16451)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 16462)
-- Name: animal_type animal_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal_type
    ADD CONSTRAINT animal_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2717 (class 2606 OID 16434)
-- Name: authority authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT authority_pkey PRIMARY KEY (id);


--
-- TOC entry 2715 (class 2606 OID 16423)
-- Name: users user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 2720 (class 1259 OID 16468)
-- Name: fki_animal_type_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_animal_type_fk ON public.animal USING btree (animal_type_id);


--
-- TOC entry 2713 (class 1259 OID 16440)
-- Name: fki_authority_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_authority_fkey ON public.users USING btree (authority_id);


--
-- TOC entry 2724 (class 2606 OID 17931)
-- Name: animal animal_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_type_fk FOREIGN KEY (animal_type_id) REFERENCES public.animal_type(id) NOT VALID;


--
-- TOC entry 2723 (class 2606 OID 17704)
-- Name: users authority_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT authority_fk FOREIGN KEY (authority_id) REFERENCES public.authority(id) NOT VALID;


-- Completed on 2019-10-30 22:20:41

--
-- PostgreSQL database dump complete
--

