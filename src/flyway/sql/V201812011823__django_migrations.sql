
--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-12-01 23:43:31.646063+00
2	auth	0001_initial	2018-12-01 23:43:31.760194+00
3	admin	0001_initial	2018-12-01 23:43:31.803075+00
4	admin	0002_logentry_remove_auto_add	2018-12-01 23:43:31.818372+00
5	admin	0003_logentry_add_action_flag_choices	2018-12-01 23:43:31.833002+00
6	contenttypes	0002_remove_content_type_name	2018-12-01 23:43:31.869899+00
7	auth	0002_alter_permission_name_max_length	2018-12-01 23:43:31.885499+00
8	auth	0003_alter_user_email_max_length	2018-12-01 23:43:31.902821+00
9	auth	0004_alter_user_username_opts	2018-12-01 23:43:31.927034+00
10	auth	0005_alter_user_last_login_null	2018-12-01 23:43:31.951606+00
11	auth	0006_require_contenttypes_0002	2018-12-01 23:43:31.960697+00
12	auth	0007_alter_validators_add_error_messages	2018-12-01 23:43:31.979855+00
13	auth	0008_alter_user_username_max_length	2018-12-01 23:43:32.015316+00
14	auth	0009_alter_user_last_name_max_length	2018-12-01 23:43:32.037592+00
15	sessions	0001_initial	2018-12-01 23:43:32.070125+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_migrations_id_seq', 15, true);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
