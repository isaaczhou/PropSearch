--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: listings_listing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    zipcode character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);


ALTER TABLE public.listings_listing OWNER TO postgres;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_listing_id_seq OWNER TO postgres;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;


--
-- Name: realtors_realtor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.realtors_realtor OWNER TO postgres;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_realtor_id_seq OWNER TO postgres;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: listings_listing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);


--
-- Name: realtors_realtor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add listing	1	add_listing
2	Can change listing	1	change_listing
3	Can delete listing	1	delete_listing
4	Can view listing	1	view_listing
5	Can add realtor	2	add_realtor
6	Can change realtor	2	change_realtor
7	Can delete realtor	2	delete_realtor
8	Can view realtor	2	view_realtor
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$16KgdMrNxYBh$1+C0YugqmaX6qIT1l24uiEKZpOPR/hl6Hp36ZkMASac=	2018-10-18 17:37:21.014428-04	t	admin			admin@btre.com	t	t	2018-10-18 17:26:26.141402-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-10-18 17:48:28.850242-04	1	Kyle Brown	1	[{"added": {}}]	2	1
2	2018-10-18 17:49:03.306297-04	2	Mark Hudson	1	[{"added": {}}]	2	1
3	2018-10-18 17:49:34.908583-04	3	Jenny Johnson	1	[{"added": {}}]	2	1
4	2018-10-18 17:49:42.771197-04	2	Mark Hudson	2	[{"changed": {"fields": ["hire_date"]}}]	2	1
5	2018-10-18 17:49:49.816562-04	1	Kyle Brown	2	[{"changed": {"fields": ["hire_date"]}}]	2	1
6	2018-10-18 17:52:09.174172-04	1	45 Drivewood Circle	1	[{"added": {}}]	1	1
7	2018-10-18 17:54:32.196034-04	2	18 Jefferson Lane	1	[{"added": {}}]	1	1
8	2018-10-18 17:55:34.992212-04	3	187 Woodrow Street	1	[{"added": {}}]	1	1
9	2018-10-18 17:56:31.820767-04	4	28 Gillford St	1	[{"added": {}}]	1	1
10	2018-10-18 17:57:24.612577-04	5	12 United Road	1	[{"added": {}}]	1	1
11	2018-10-18 17:58:42.967436-04	6	33 Essex Circle	1	[{"added": {}}]	1	1
12	2018-10-18 18:02:35.962488-04	6	33 Essex Circle	2	[{"changed": {"fields": ["is_published"]}}]	1	1
13	2018-10-18 18:02:39.118493-04	6	33 Essex Circle	2	[{"changed": {"fields": ["is_published"]}}]	1	1
14	2018-10-18 19:25:51.869259-04	6	33 Essex Circle	2	[{"changed": {"fields": ["is_published"]}}]	1	1
15	2018-10-18 19:26:03.477448-04	6	33 Essex Circle	2	[{"changed": {"fields": ["is_published"]}}]	1	1
16	2018-10-18 19:45:09.565904-04	1	Kyle Brown	2	[{"changed": {"fields": ["is_mvp"]}}]	2	1
17	2018-10-18 20:05:11.857682-04	1	Kyle Brown	2	[{"changed": {"fields": ["description"]}}]	2	1
18	2018-10-18 20:05:20.489851-04	1	Kyle Brown	2	[{"changed": {"fields": ["is_mvp"]}}]	2	1
19	2018-10-18 20:05:31.240715-04	3	Jenny Johnson	2	[{"changed": {"fields": ["is_mvp"]}}]	2	1
20	2018-10-18 20:05:42.961201-04	3	Jenny Johnson	2	[{"changed": {"fields": ["description"]}}]	2	1
21	2018-10-18 20:05:51.282917-04	2	Mark Hudson	2	[{"changed": {"fields": ["description"]}}]	2	1
22	2018-10-19 12:02:47.368655-04	6	33 Essex Circle	2	[{"changed": {"fields": ["description"]}}]	1	1
23	2018-10-19 12:02:53.187401-04	5	12 United Road	2	[]	1	1
24	2018-10-19 12:02:56.611923-04	6	33 Essex Circle	2	[]	1	1
25	2018-10-19 12:03:00.66251-04	4	28 Gillford St	2	[]	1	1
26	2018-10-19 14:24:26.091356-04	6	33 Essex Circle	2	[{"changed": {"fields": ["description"]}}]	1	1
27	2018-10-19 15:00:19.436612-04	7	小的片由工港的	1	[{"added": {}}]	1	1
28	2018-10-19 15:01:28.158218-04	7	2600 1房1浴 Skyview天景豪苑二期 condo 738尺 有洗衣机烘干机 有洗碗机 全包 有电梯	2	[{"changed": {"fields": ["title", "description"]}}]	1	1
29	2018-10-19 15:02:47.706373-04	7	Skyview天景豪苑二期	2	[{"changed": {"fields": ["title"]}}]	1	1
30	2018-10-19 15:12:00.040282-04	7	Skyview天景豪苑二期	3		1	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	listings	listing
2	realtors	realtor
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-18 17:23:05.682178-04
2	auth	0001_initial	2018-10-18 17:23:05.846261-04
3	admin	0001_initial	2018-10-18 17:23:05.906609-04
4	admin	0002_logentry_remove_auto_add	2018-10-18 17:23:05.917974-04
5	admin	0003_logentry_add_action_flag_choices	2018-10-18 17:23:05.92677-04
6	contenttypes	0002_remove_content_type_name	2018-10-18 17:23:05.951521-04
7	auth	0002_alter_permission_name_max_length	2018-10-18 17:23:05.959919-04
8	auth	0003_alter_user_email_max_length	2018-10-18 17:23:05.970751-04
9	auth	0004_alter_user_username_opts	2018-10-18 17:23:05.978832-04
10	auth	0005_alter_user_last_login_null	2018-10-18 17:23:05.989257-04
11	auth	0006_require_contenttypes_0002	2018-10-18 17:23:05.992913-04
12	auth	0007_alter_validators_add_error_messages	2018-10-18 17:23:06.001283-04
13	auth	0008_alter_user_username_max_length	2018-10-18 17:23:06.019191-04
14	auth	0009_alter_user_last_name_max_length	2018-10-18 17:23:06.030106-04
15	realtors	0001_initial	2018-10-18 17:23:06.047727-04
16	listings	0001_initial	2018-10-18 17:23:06.074138-04
17	listings	0002_auto_20181018_1719	2018-10-18 17:23:06.080784-04
18	realtors	0002_auto_20181018_1719	2018-10-18 17:23:06.086986-04
19	sessions	0001_initial	2018-10-18 17:23:06.113639-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
355r04zax927lbqmkzuha39ad5xichuu	ZjdhNmZiNDJmZDMxMzYwN2JmY2ExNDY1NzE1MGYwN2Q1Y2Y5YTU3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMjQxNDcxMjM1MjNiZjQwMTMyMzIzMzA2ZDM5MmNmYWY3MzNjMjUxIn0=	2018-11-01 17:26:34.446549-04
wwdnayrkxvy109vfhhdwna0ue7030dlj	ZjdhNmZiNDJmZDMxMzYwN2JmY2ExNDY1NzE1MGYwN2Q1Y2Y5YTU3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMjQxNDcxMjM1MjNiZjQwMTMyMzIzMzA2ZDM5MmNmYWY3MzNjMjUxIn0=	2018-11-01 17:37:21.017724-04
\.


--
-- Data for Name: listings_listing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_2, photo_3, photo_1, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
1	45 Drivewood Circle	45 Drivewood Circle	Norwood	MA	02062	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat. Etiam quis dolor sit amet ante auctor porttitor. Phasellus a nunc sed orci vulputate sagittis. Morbi convallis ipsum vel nisl tincidunt, quis tincidunt justo sollicitudin. Morbi vitae mauris id dolor tincidunt vulputate. Proin fringilla ipsum ut leo volutpat, a facilisis lacus molestie. Mauris pellentesque neque eu nisi tincidunt ultricies. Nullam vitae sem elit. Curabitur lacinia tristique ipsum, sed interdum est scelerisque ac. Vivamus in finibus mi.	490000	3	2.0	2	3298	2.3	photos/2018/10/18/home-1_3w52T6J.jpg	photos/2018/10/18/home-inside-2_uLWEj4H.jpg	photos/2018/10/18/home-inside-3_x5IJzCW.jpg	photos/2018/10/18/home-inside-1_n8BI3XV.jpg	photos/2018/10/18/home-inside-4_dGcJHEq.jpg	photos/2018/10/18/home-inside-5_yp9f4PL.jpg	photos/2018/10/18/home-inside-6_Hh5oaE5.jpg	t	2018-10-18 17:50:00-04	1
2	18 Jefferson Lane	18 Jefferson Lane	Woborn	MA	01801	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat. Etiam quis dolor sit amet ante auctor porttitor. Phasellus a nunc sed orci vulputate sagittis. Morbi convallis ipsum vel nisl tincidunt, quis tincidunt justo sollicitudin. Morbi vitae mauris id dolor tincidunt vulputate. Proin fringilla ipsum ut leo volutpat, a facilisis lacus molestie. Mauris pellentesque neque eu nisi tincidunt ultricies. Nullam vitae sem elit. Curabitur lacinia tristique ipsum, sed interdum est scelerisque ac. Vivamus in finibus mi.	500000	4	2.5	1	3100	1.5	photos/2018/10/18/home-2_PCXzsZc.jpg	photos/2018/10/18/home-inside-2_NNcGA3m.jpg	photos/2018/10/18/home-inside-3_d0s6bNW.jpg	photos/2018/10/18/home-inside-1_RHSnWlw.jpg	photos/2018/10/18/home-inside-4_u3n6IGk.jpg			t	2018-10-18 17:52:28-04	2
3	187 Woodrow Street	187 Woodrow Street	Salem	MA	01915	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat. Etiam quis dolor sit amet ante auctor porttitor. Phasellus a nunc sed orci vulputate sagittis. Morbi convallis ipsum vel nisl tincidunt, quis tincidunt justo sollicitudin. Morbi vitae mauris id dolor tincidunt vulputate. Proin fringilla ipsum ut leo volutpat, a facilisis lacus molestie. Mauris pellentesque neque eu nisi tincidunt ultricies. Nullam vitae sem elit. Curabitur lacinia tristique ipsum, sed interdum est scelerisque ac. Vivamus in finibus mi.	580000	3	3.0	1	3400	1.0	photos/2018/10/18/home-3_EPKDrbu.jpg	photos/2018/10/18/home-inside-2_MCAUlo8.jpg	photos/2018/10/18/home-inside-3_l4XOnoy.jpg	photos/2018/10/18/home-inside-1_LilmUpE.jpg	photos/2018/10/18/home-inside-4_SUvYryG.jpg			t	2018-10-18 17:54:36-04	3
5	12 United Road	12 United Road	South Hampton	NH	03927	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat. Etiam quis dolor sit amet ante auctor porttitor. Phasellus a nunc sed orci vulputate sagittis. Morbi convallis ipsum vel nisl tincidunt, quis tincidunt justo sollicitudin. Morbi vitae mauris id dolor tincidunt vulputate. Proin fringilla ipsum ut leo volutpat, a facilisis lacus molestie. Mauris pellentesque neque eu nisi tincidunt ultricies. Nullam vitae sem elit. Curabitur lacinia tristique ipsum, sed interdum est scelerisque ac. Vivamus in finibus mi.	230000	3	1.0	1	2500	1.5	photos/2018/10/18/home-5_DTfqMuZ.jpg	photos/2018/10/18/home-inside-2_IaIPFpf.jpg	photos/2018/10/18/home-inside-3_0L8Wxoi.jpg	photos/2018/10/18/home-inside-1_DEz57FW.jpg				t	2018-10-18 17:56:33-04	1
4	28 Gillford St	28 Gillford St	Bedford	NH	03103	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat. Etiam quis dolor sit amet ante auctor porttitor. Phasellus a nunc sed orci vulputate sagittis. Morbi convallis ipsum vel nisl tincidunt, quis tincidunt justo sollicitudin. Morbi vitae mauris id dolor tincidunt vulputate. Proin fringilla ipsum ut leo volutpat, a facilisis lacus molestie. Mauris pellentesque neque eu nisi tincidunt ultricies. Nullam vitae sem elit. Curabitur lacinia tristique ipsum, sed interdum est scelerisque ac. Vivamus in finibus mi.	380000	3	2.5	2	2900	4.5	photos/2018/10/18/home-4_oQL7zSj.jpg	photos/2018/10/18/home-inside-2_GhW4P1z.jpg		photos/2018/10/18/home-inside-1_ps9tigK.jpg				t	2018-10-18 17:55:36-04	2
6	33 Essex Circle	33 Essex Circle	Lexington	MA	01731	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse convallis commodo blandit. Nunc vulputate tellus ultricies, suscipit nunc eu, consequat sem. Aliquam fringilla consectetur imperdiet. Mauris imperdiet mauris id turpis tincidunt, id aliquet elit varius. Vestibulum purus diam, varius eu egestas sed, porta non nisi. Ut augue ante, varius ac massa a, cursus aliquet nulla. Integer aliquet fermentum accumsan. Donec cursus tristique ex tempor rhoncus. Etiam nec suscipit urna.\r\nEssex	780000	5	4.0	1	5023	1.7	photos/2018/10/18/home-6_ceYKy78.jpg	photos/2018/10/18/home-inside-1_Idtcr6Q.jpg	photos/2018/10/18/home-inside-6_lcJ73GE.jpg	photos/2018/10/18/home-inside-2_K2JNeSN.jpg	photos/2018/10/18/home-inside-5_yXoL78U.jpg			t	2018-10-18 17:57:26-04	1
\.


--
-- Data for Name: realtors_realtor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.realtors_realtor (id, name, photo, description, phone, email, is_mvp, hire_date) FROM stdin;
1	Kyle Brown	photos/2018/10/18/kyle_Rm1vyDF.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat.	555-555-5555	kyle@btre.com	f	2011-10-18 17:47:25-04
3	Jenny Johnson	photos/2018/10/18/jenny_8ZwWuKl.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat.	555-555-3333	jenny@btre.com	t	2008-10-18 17:49:05-04
2	Mark Hudson	photos/2018/10/18/mark_iqSBQGo.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis pharetra leo. Suspendisse potenti. Suspendisse nisl diam, ornare in eros in, imperdiet ornare diam. Donec tortor lectus, ornare vel leo sit amet, suscipit aliquam erat.	555-555-4444	mark@btre.com	f	2016-10-18 17:48:31-04
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: listings_listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listings_listing_id_seq', 7, true);


--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: listings_listing listings_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);


--
-- Name: realtors_realtor realtors_realtor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: listings_listing_realtor_id_90583529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

