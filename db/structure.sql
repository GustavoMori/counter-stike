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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: equipments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.equipments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: COLUMN equipments.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.equipments.name IS 'Name of the equipment';


--
-- Name: COLUMN equipments.type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.equipments.type IS 'Type of the equipment';


--
-- Name: equipments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.equipments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: equipments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.equipments_id_seq OWNED BY public.equipments.id;


--
-- Name: equipments_players; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.equipments_players (
    id bigint NOT NULL,
    equipment_id bigint NOT NULL,
    player_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: equipments_players_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.equipments_players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: equipments_players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.equipments_players_id_seq OWNED BY public.equipments_players.id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.players (
    id bigint NOT NULL,
    name character varying NOT NULL,
    nick_name character varying NOT NULL,
    role character varying NOT NULL,
    country character varying,
    twitter_url character varying,
    instagram_url character varying,
    twitch_url character varying,
    age integer,
    team_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: COLUMN players.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.name IS 'Name of the player';


--
-- Name: COLUMN players.nick_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.nick_name IS 'Nickname of the player';


--
-- Name: COLUMN players.role; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.role IS 'Function of the player';


--
-- Name: COLUMN players.country; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.country IS 'Country where the player is from';


--
-- Name: COLUMN players.twitter_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.twitter_url IS 'Twitter url of the player';


--
-- Name: COLUMN players.instagram_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.instagram_url IS 'Instagram url of the player';


--
-- Name: COLUMN players.twitch_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.twitch_url IS 'Twitch url of the player';


--
-- Name: COLUMN players.age; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.age IS 'Age of the player';


--
-- Name: COLUMN players.team_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.players.team_id IS 'Team of the player';


--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.players_id_seq OWNED BY public.players.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    name character varying NOT NULL,
    country character varying,
    coach character varying,
    twitter_url character varying,
    instagram_url character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: COLUMN teams.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.teams.name IS 'Name of the team';


--
-- Name: COLUMN teams.country; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.teams.country IS 'Country where the team is from';


--
-- Name: COLUMN teams.coach; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.teams.coach IS 'Coach of the team';


--
-- Name: COLUMN teams.twitter_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.teams.twitter_url IS 'Twitter url of the team';


--
-- Name: COLUMN teams.instagram_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.teams.instagram_url IS 'Instagram url of the team';


--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: equipments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipments ALTER COLUMN id SET DEFAULT nextval('public.equipments_id_seq'::regclass);


--
-- Name: equipments_players id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipments_players ALTER COLUMN id SET DEFAULT nextval('public.equipments_players_id_seq'::regclass);


--
-- Name: players id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.players ALTER COLUMN id SET DEFAULT nextval('public.players_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: equipments equipments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipments
    ADD CONSTRAINT equipments_pkey PRIMARY KEY (id);


--
-- Name: equipments_players equipments_players_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipments_players
    ADD CONSTRAINT equipments_players_pkey PRIMARY KEY (id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: index_equipments_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_equipments_on_name ON public.equipments USING btree (name);


--
-- Name: index_equipments_players_on_equipment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_equipments_players_on_equipment_id ON public.equipments_players USING btree (equipment_id);


--
-- Name: index_equipments_players_on_player_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_equipments_players_on_player_id ON public.equipments_players USING btree (player_id);


--
-- Name: index_players_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_players_on_name ON public.players USING btree (name);


--
-- Name: index_players_on_nick_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_players_on_nick_name ON public.players USING btree (nick_name);


--
-- Name: index_players_on_team_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_players_on_team_id ON public.players USING btree (team_id);


--
-- Name: index_teams_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_teams_on_name ON public.teams USING btree (name);


--
-- Name: equipments_players fk_rails_1e7fa65bb5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipments_players
    ADD CONSTRAINT fk_rails_1e7fa65bb5 FOREIGN KEY (player_id) REFERENCES public.players(id);


--
-- Name: equipments_players fk_rails_757a285afa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipments_players
    ADD CONSTRAINT fk_rails_757a285afa FOREIGN KEY (equipment_id) REFERENCES public.equipments(id);


--
-- Name: players fk_rails_8880a915a5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT fk_rails_8880a915a5 FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20230410142400'),
('20230410145800'),
('20230410154800'),
('20230410160100');


