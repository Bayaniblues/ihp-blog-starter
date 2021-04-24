

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('46770d67-d84d-45c8-9f0d-47972078d48c', 'test', 'test body', '2021-03-13 17:40:36.0773-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('e958a39c-ed2c-403e-82c5-41a00bd3464b', 'test', 'body', '2021-04-23 21:18:11.794645-06');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('a1c1f14f-0af8-4463-a8ce-370380302fb1', '46770d67-d84d-45c8-9f0d-47972078d48c', 'bobby', 'test comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('e045bc6b-4d9e-463e-849d-8422de2c07c8', '46770d67-d84d-45c8-9f0d-47972078d48c', 'test', 'comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('c4425e52-f7a1-40da-80b1-7bb6b40c8e3d', '46770d67-d84d-45c8-9f0d-47972078d48c', 'albert', 'comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('826fcac7-3dcb-4c65-a5be-f6df11a79bde', '46770d67-d84d-45c8-9f0d-47972078d48c', 'albertt', 'test comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('60679123-b6e3-440a-9a5e-9b050a6b37cb', 'e958a39c-ed2c-403e-82c5-41a00bd3464b', 'albert', 'test comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('c48ee622-73c6-4782-9d38-b1f6d3964dd6', 'e958a39c-ed2c-403e-82c5-41a00bd3464b', 'sally', 'chemistry');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('9aa7672d-452b-4ac5-85ad-7d0497e8c235', 'e958a39c-ed2c-403e-82c5-41a00bd3464b', 'albert', 'test comment');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


