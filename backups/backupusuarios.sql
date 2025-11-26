--
-- PostgreSQL database dump
--

\restrict xq8eC2tzFhdYxL9yGNcDoSccakNFHcBY2hXfp3FkIo7SY7hQgpqXK1RJEikDV4z

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg13+1)
-- Dumped by pg_dump version 17.6

-- Started on 2025-11-06 20:25:32 UTC

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
-- TOC entry 3683 (class 0 OID 155721)
-- Dependencies: 322
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.menus VALUES (1, 'Dashboard', '/', 'bi bi-speedometer', 1, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (2, 'Pacientes', '/pacientes', 'fas fa-user-injured', 2, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (3, 'Configuración', '#', 'bi bi-gear', 3, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (4, 'Reportes', '#', 'bi bi-graph-up', 4, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (5, 'Auditoría', '#', 'bi bi-shield-check', 5, NULL, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (6, 'Monedas', '/configuracion/monedas', 'bi bi-coin', 1, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (7, 'Países', '/configuracion/paises', 'bi bi-globe-americas', 2, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (8, 'LOV', '/configuracion/lovh', 'bi bi-card-checklist', 3, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (9, 'Médicos', '/medicos', 'bi bi-person-heart', 4, 3, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (10, 'Reporte de Pacientes', '/reportes/pacientes', 'bi bi-person-lines-fill', 1, 4, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (11, 'Reporte Financiero', '/reportes/financiero', 'bi bi-cash-coin', 2, 4, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (12, 'Log de Accesos', '/auditoria/accesos', 'bi bi-door-open', 1, 5, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.menus VALUES (13, 'Log de Cambios', '/auditoria/cambios', 'bi bi-clock-history', 2, 5, true, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3685 (class 0 OID 155736)
-- Dependencies: 324
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.permisos VALUES (1, 1, 1, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (2, 1, 2, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (3, 1, 3, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (4, 1, 4, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (5, 1, 5, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (6, 1, 6, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (7, 1, 7, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (8, 1, 8, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (9, 1, 9, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (10, 1, 10, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (11, 1, 11, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (12, 1, 12, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (13, 1, 13, true, true, true, true, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (14, 2, 1, true, false, false, false, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (15, 2, 2, true, false, false, false, '2025-11-06 17:08:49.526254');
INSERT INTO public.permisos VALUES (16, 2, 9, true, false, false, false, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3681 (class 0 OID 155710)
-- Dependencies: 320
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'ADMIN', 'Administrador del sistema', true, '2025-11-06 17:08:49.526254');
INSERT INTO public.roles VALUES (2, 'USUARIO', 'Usuario estándar', true, '2025-11-06 17:08:49.526254');


--
-- TOC entry 3679 (class 0 OID 139270)
-- Dependencies: 318
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (183, 'admin', '$2a$10$DmRxeEm0Brrz9f93mgJXAu/hkySq4FqjkVAHbcWBjZUxwCiRyvW3.', 'admin@example.com', 'ADMIN,USER', '2025-11-06 13:34:07.936454');


--
-- TOC entry 3686 (class 0 OID 155759)
-- Dependencies: 325
-- Data for Name: usuarios_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios_roles VALUES (183, 1, '2025-11-06 19:35:20.233327', 2);


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


-- Completed on 2025-11-06 20:25:32 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict xq8eC2tzFhdYxL9yGNcDoSccakNFHcBY2hXfp3FkIo7SY7hQgpqXK1RJEikDV4z

