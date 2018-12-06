create table auth_user (
    id integer NOT NULL,
    user_id uuid default uuid_generate_v4(),
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);

create sequence auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);
ALTER TABLE ONLY auth_user ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
ALTER TABLE ONLY auth_user ADD CONSTRAINT auth_user_username_key UNIQUE (username);
CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
create index auth_user_user_id on public.auth_user(user_id)