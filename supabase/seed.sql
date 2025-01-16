SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'bdd1ee6d-8614-43a6-b4a6-9fe6721a5b61', '{"action":"user_signedup","actor_id":"8695beda-eb6a-453d-96a6-3c6a663f115d","actor_name":"Mike Lautensack","actor_username":"mikelautensack100@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"github"}}', '2025-01-16 00:37:23.365088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b03e6a6c-740d-467c-932a-b01306981ebe', '{"action":"login","actor_id":"8695beda-eb6a-453d-96a6-3c6a663f115d","actor_name":"Mike Lautensack","actor_username":"mikelautensack100@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"github"}}', '2025-01-16 00:37:24.647942+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '8695beda-eb6a-453d-96a6-3c6a663f115d', 'authenticated', 'authenticated', 'mikelautensack100@gmail.com', NULL, '2025-01-16 00:37:23.367337+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-16 00:37:24.648443+00', '{"provider": "github", "providers": ["github"]}', '{"iss": "https://api.github.com", "sub": "110644605", "name": "Mike Lautensack", "email": "mikelautensack100@gmail.com", "full_name": "Mike Lautensack", "user_name": "MikeLautensack", "avatar_url": "https://avatars.githubusercontent.com/u/110644605?v=4", "provider_id": "110644605", "email_verified": true, "phone_verified": false, "preferred_username": "MikeLautensack"}', NULL, '2025-01-16 00:37:23.327131+00', '2025-01-16 00:37:24.658534+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('110644605', '8695beda-eb6a-453d-96a6-3c6a663f115d', '{"iss": "https://api.github.com", "sub": "110644605", "name": "Mike Lautensack", "email": "mikelautensack100@gmail.com", "full_name": "Mike Lautensack", "user_name": "MikeLautensack", "avatar_url": "https://avatars.githubusercontent.com/u/110644605?v=4", "provider_id": "110644605", "email_verified": true, "phone_verified": false, "preferred_username": "MikeLautensack"}', 'github', '2025-01-16 00:37:23.358127+00', '2025-01-16 00:37:23.35819+00', '2025-01-16 00:37:23.35819+00', '49545d99-0c50-4578-b849-b3382e8d132f');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('092483ff-6422-41dc-bde8-d9740185f804', '8695beda-eb6a-453d-96a6-3c6a663f115d', '2025-01-16 00:37:24.64852+00', '2025-01-16 00:37:24.64852+00', NULL, 'aal1', NULL, NULL, 'node', '12.74.93.3', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('092483ff-6422-41dc-bde8-d9740185f804', '2025-01-16 00:37:24.658989+00', '2025-01-16 00:37:24.658989+00', 'oauth', 'f1c585db-9605-47ae-a7bf-0f6108af07fd');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'uRRgFsLlIBS_pasfjYhmFw', '8695beda-eb6a-453d-96a6-3c6a663f115d', false, '2025-01-16 00:37:24.6531+00', '2025-01-16 00:37:24.6531+00', NULL, '092483ff-6422-41dc-bde8-d9740185f804');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: Inventory_Item; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
