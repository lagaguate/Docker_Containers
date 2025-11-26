--
-- PostgreSQL database dump
--

\restrict LPnPapmkAmHPewdh7dsnMDmw986mDJZeDeYdo7r0dnzgiCHr7JzsnHva5XRqJhE

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg13+1)
-- Dumped by pg_dump version 17.6

-- Started on 2025-11-06 20:29:39 UTC

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

--
-- TOC entry 3662 (class 0 OID 155710)
-- Dependencies: 320
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles (id, nombre, descripcion, estado, fecha_creacion) VALUES (1, 'ADMIN', 'Administrador del sistema', true, '2025-11-06 17:08:49.526254');
INSERT INTO public.roles (id, nombre, descripcion, estado, fecha_creacion) VALUES (2, 'USUARIO', 'Usuario estándar', true, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3660 (class 0 OID 139270)
-- Dependencies: 318
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, username, password, email, roles, created_at) VALUES (183, 'admin', '$2a$10$DmRxeEm0Brrz9f93mgJXAu/hkySq4FqjkVAHbcWBjZUxwCiRyvW3.', 'admin@example.com', 'ADMIN,USER', '2025-11-06 13:34:07.936454');


--
-- TOC entry 3663 (class 0 OID 155759)
-- Dependencies: 325
-- Data for Name: usuarios_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_roles (usuario_id, rol_id, fecha_asignacion, id) VALUES (183, 1, '2025-11-06 19:35:20.233327', 2);


--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 319
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 317
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 183, true);


--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 326
-- Name: usuarios_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_roles_id_seq', 2, true);


-- Completed on 2025-11-06 20:29:39 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict LPnPapmkAmHPewdh7dsnMDmw986mDJZeDeYdo7r0dnzgiCHr7JzsnHva5XRqJhE

