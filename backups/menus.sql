--
-- PostgreSQL database dump
--

\restrict ACmAz4xRrrCGhUSu1ghyEJhOcaUrRQzAH1rEmpvuBW3jXjuDPm3Xqcn4YRA51pM

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg13+1)
-- Dumped by pg_dump version 17.6

-- Started on 2025-11-06 20:32:26 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 322 (class 1259 OID 155721)
-- Name: menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menus (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    url character varying(255),
    icono character varying(50),
    orden integer DEFAULT 0,
    menu_padre_id bigint,
    estado boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.menus OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 155720)
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menus_id_seq OWNER TO postgres;

--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 321
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- TOC entry 324 (class 1259 OID 155736)
-- Name: permisos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permisos (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    menu_id bigint NOT NULL,
    puede_ver boolean DEFAULT true,
    puede_crear boolean DEFAULT false,
    puede_editar boolean DEFAULT false,
    puede_eliminar boolean DEFAULT false,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.permisos OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 155735)
-- Name: permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permisos_id_seq OWNER TO postgres;

--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 323
-- Name: permisos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permisos_id_seq OWNED BY public.permisos.id;


--
-- TOC entry 320 (class 1259 OID 155710)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(255),
    estado boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 155709)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 319
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 318 (class 1259 OID 139270)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(100) NOT NULL,
    roles character varying(100) DEFAULT 'USER'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 139269)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 317
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 325 (class 1259 OID 155759)
-- Name: usuarios_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_roles (
    usuario_id bigint NOT NULL,
    rol_id bigint NOT NULL,
    fecha_asignacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id bigint NOT NULL
);


ALTER TABLE public.usuarios_roles OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 155775)
-- Name: usuarios_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usuarios_roles ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.usuarios_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3501 (class 2604 OID 155724)
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- TOC entry 3505 (class 2604 OID 155739)
-- Name: permisos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos ALTER COLUMN id SET DEFAULT nextval('public.permisos_id_seq'::regclass);


--
-- TOC entry 3498 (class 2604 OID 155713)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3495 (class 2604 OID 139273)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3683 (class 0 OID 155721)
-- Dependencies: 322
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (1, 'Dashboard', '/', 'bi bi-speedometer', 1, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (2, 'Pacientes', '/pacientes', 'fas fa-user-injured', 2, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (3, 'Configuración', '#', 'bi bi-gear', 3, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (4, 'Reportes', '#', 'bi bi-graph-up', 4, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (5, 'Auditoría', '#', 'bi bi-shield-check', 5, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (6, 'Monedas', '/configuracion/monedas', 'bi bi-coin', 1, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (7, 'Países', '/configuracion/paises', 'bi bi-globe-americas', 2, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (8, 'LOV', '/configuracion/lovh', 'bi bi-card-checklist', 3, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (9, 'Médicos', '/medicos', 'bi bi-person-heart', 4, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (10, 'Reporte de Pacientes', '/reportes/pacientes', 'bi bi-person-lines-fill', 1, 4, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (11, 'Reporte Financiero', '/reportes/financiero', 'bi bi-cash-coin', 2, 4, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (12, 'Log de Accesos', '/auditoria/accesos', 'bi bi-door-open', 1, 5, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus (id, nombre, url, icono, orden, menu_padre_id, estado, fecha_creacion) VALUES (13, 'Log de Cambios', '/auditoria/cambios', 'bi bi-clock-history', 2, 5, true, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3685 (class 0 OID 155736)
-- Dependencies: 324
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (1, 1, 1, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (2, 1, 2, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (3, 1, 3, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (4, 1, 4, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (5, 1, 5, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (6, 1, 6, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (7, 1, 7, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (8, 1, 8, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (9, 1, 9, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (10, 1, 10, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (11, 1, 11, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (12, 1, 12, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (13, 1, 13, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (14, 2, 1, true, false, false, false, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (15, 2, 2, true, false, false, false, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos (id, rol_id, menu_id, puede_ver, puede_crear, puede_editar, puede_eliminar, fecha_creacion) VALUES (16, 2, 9, true, false, false, false, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3681 (class 0 OID 155710)
-- Dependencies: 320
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles (id, nombre, descripcion, estado, fecha_creacion) VALUES (1, 'ADMIN', 'Administrador del sistema', true, '2025-11-06 17:08:49.526254');
INSERT INTO public.roles (id, nombre, descripcion, estado, fecha_creacion) VALUES (2, 'USUARIO', 'Usuario estándar', true, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3679 (class 0 OID 139270)
-- Dependencies: 318
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, username, password, email, roles, created_at) VALUES (183, 'admin', '$2a$10$DmRxeEm0Brrz9f93mgJXAu/hkySq4FqjkVAHbcWBjZUxwCiRyvW3.', 'admin@example.com', 'ADMIN,USER', '2025-11-06 13:34:07.936454');


--
-- TOC entry 3686 (class 0 OID 155759)
-- Dependencies: 325
-- Data for Name: usuarios_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_roles (usuario_id, rol_id, fecha_asignacion, id) VALUES (183, 1, '2025-11-06 19:35:20.233327', 2);


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 321
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menus_id_seq', 13, true);


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 323
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permisos_id_seq', 16, true);


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 319
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 317
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 183, true);


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 326
-- Name: usuarios_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_roles_id_seq', 2, true);


--
-- TOC entry 3521 (class 2606 OID 155729)
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- TOC entry 3523 (class 2606 OID 155746)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 3517 (class 2606 OID 155719)
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- TOC entry 3519 (class 2606 OID 155717)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3525 (class 2606 OID 155748)
-- Name: permisos uk_rol_menu; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT uk_rol_menu UNIQUE (rol_id, menu_id);


--
-- TOC entry 3513 (class 2606 OID 139279)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3515 (class 2606 OID 139281)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3527 (class 2606 OID 155764)
-- Name: usuarios_roles usuarios_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles
    ADD CONSTRAINT usuarios_roles_pkey PRIMARY KEY (usuario_id, rol_id);


--
-- TOC entry 3528 (class 2606 OID 155730)
-- Name: menus menus_menu_padre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_menu_padre_id_fkey FOREIGN KEY (menu_padre_id) REFERENCES public.menus(id);


--
-- TOC entry 3529 (class 2606 OID 155754)
-- Name: permisos permisos_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.menus(id);


--
-- TOC entry 3530 (class 2606 OID 155749)
-- Name: permisos permisos_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);


--
-- TOC entry 3531 (class 2606 OID 155770)
-- Name: usuarios_roles usuarios_roles_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles
    ADD CONSTRAINT usuarios_roles_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);


--
-- TOC entry 3532 (class 2606 OID 155765)
-- Name: usuarios_roles usuarios_roles_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_roles
    ADD CONSTRAINT usuarios_roles_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.users(id);


--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 322
-- Name: TABLE menus; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.menus TO paciente;
GRANT SELECT ON TABLE public.menus TO backup_user;


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 324
-- Name: TABLE permisos; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.permisos TO paciente;
GRANT SELECT ON TABLE public.permisos TO backup_user;


--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 320
-- Name: TABLE roles; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.roles TO paciente;
GRANT SELECT ON TABLE public.roles TO backup_user;


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 318
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.users TO paciente;
GRANT SELECT ON TABLE public.users TO backup_user;


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 325
-- Name: TABLE usuarios_roles; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.usuarios_roles TO paciente;
GRANT SELECT ON TABLE public.usuarios_roles TO backup_user;


-- Completed on 2025-11-06 20:32:26 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict ACmAz4xRrrCGhUSu1ghyEJhOcaUrRQzAH1rEmpvuBW3jXjuDPm3Xqcn4YRA51pM

