--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: AcademicHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AcademicHistory" (
    "AHID" character varying NOT NULL,
    "StudentID" integer NOT NULL,
    "EntryYear" integer NOT NULL,
    "Course" integer NOT NULL,
    "Semester" integer NOT NULL,
    "AvgMarkForSemester" integer NOT NULL,
    "NumOfMissedClasses" integer NOT NULL
);


ALTER TABLE public."AcademicHistory" OWNER TO postgres;

--
-- Name: Address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Address" (
    "AddressID" integer NOT NULL,
    "Country" character varying(100) NOT NULL,
    "City" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    "House" integer NOT NULL
);


ALTER TABLE public."Address" OWNER TO postgres;

--
-- Name: Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Group" (
    "GroupID" integer NOT NULL,
    "GroupName" character varying(20) NOT NULL,
    "StudentsQuantity" integer NOT NULL
);


ALTER TABLE public."Group" OWNER TO postgres;

--
-- Name: Schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Schedule" (
    "ScheduleSubjectID" integer NOT NULL,
    "SubjectID" integer NOT NULL,
    "TeacherID" integer NOT NULL,
    "GroupID" integer NOT NULL,
    "DateOfSubject" date NOT NULL,
    "TimeOfSubject" time without time zone NOT NULL
);


ALTER TABLE public."Schedule" OWNER TO postgres;

--
-- Name: Student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Student" (
    "StudentID" integer NOT NULL,
    "AddressID" integer NOT NULL,
    "FName" character varying(50) NOT NULL,
    "SName" character varying(50) NOT NULL,
    "Birthday" date NOT NULL,
    "PhoneNum" character varying(20) NOT NULL,
    "Email" character varying(50) NOT NULL
);


ALTER TABLE public."Student" OWNER TO postgres;

--
-- Name: StudentPerformance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentPerformance" (
    "PerformanceID" integer NOT NULL,
    "StudentID" integer NOT NULL,
    "SubjectName" character varying(100) NOT NULL,
    "Mark" integer NOT NULL
);


ALTER TABLE public."StudentPerformance" OWNER TO postgres;

--
-- Name: Subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subject" (
    "SubjectID" integer NOT NULL,
    "SubjectName" character varying(50) NOT NULL
);


ALTER TABLE public."Subject" OWNER TO postgres;

--
-- Name: Teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Teacher" (
    "TeacherID" integer NOT NULL,
    "FName" character varying(50) NOT NULL,
    "SName" character varying(50) NOT NULL,
    "PhoneNum" character varying(20) NOT NULL,
    "Email" character varying(50) NOT NULL
);


ALTER TABLE public."Teacher" OWNER TO postgres;

--
-- Data for Name: AcademicHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AcademicHistory" ("AHID", "StudentID", "EntryYear", "Course", "Semester", "AvgMarkForSemester", "NumOfMissedClasses") FROM stdin;
1	1	2021	3	1	82	6
2	2	2021	3	1	87	12
3	3	2021	3	1	86	14
4	5	2021	3	1	80	30
\.


--
-- Data for Name: Address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Address" ("AddressID", "Country", "City", "Street", "House") FROM stdin;
1	Россия	Можайск	Ломоносова	68
2	Россия	Кострома	пл. Космонавтов	23
3	Россия	Жуковский	Первомайская	5
4	Россия	Тула	Сосновая	22
5	Россия	Набережные Челны	Пролетарская	16
6	Россия	Оренбург	Первомайский пер	20
7	Россия	Бийск	Центральный пер	7
8	Россия	Северодвинск	Пионерская	18
9	Россия	Ростов-на-Дону	Солнечный пер	12
10	Россия	Красноярск	Лесной пер	15
11	Россия	Серпухов	Пушкина	21
\.


--
-- Data for Name: Group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Group" ("GroupID", "GroupName", "StudentsQuantity") FROM stdin;
1	К.105с11-1	20
2	К.105с11-2	18
3	У434	30
4	283б-СП	24
5	К.208с9	27
6	К006а	23
7	К.205с9-1	25
8	К032	16
9	К.105с9-5	32
10	К.205с11-5	26
11	К025а	21
12	К.304с9-1	35
\.


--
-- Data for Name: Schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Schedule" ("ScheduleSubjectID", "SubjectID", "TeacherID", "GroupID", "DateOfSubject", "TimeOfSubject") FROM stdin;
1	1	1	1	2023-09-28	16:40:00
2	3	2	1	2023-09-28	15:00:00
3	2	4	2	2023-09-26	08:00:00
4	5	6	6	2023-09-29	13:20:00
5	8	3	5	2023-09-27	09:40:00
6	9	4	6	2023-09-30	11:20:00
\.


--
-- Data for Name: Student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Student" ("StudentID", "AddressID", "FName", "SName", "Birthday", "PhoneNum", "Email") FROM stdin;
1	1	Артем	Малахов	2003-10-18	+7-953-037-17-63	r4z0rsh4rp@yandex.ru
2	3	Артем	Николаев	2003-10-12	+7-963-234-35-27	afF1x@mail.ru
3	7	Олег	Лукьянченко	2003-10-23	+7-952-515-82-72	oleglomalo@yandex.ru
4	11	Червов	Никита	2000-03-17	+7-961-651-62-55	chervNIK@gmail.com
5	9	Коваленко	Кирилл	2003-04-22	+7-992-124-10-93	vgrinchiCK@mail.ru
6	10	Голотин	Василий	2002-06-06	+7-936-201-14-10	vasiliy10@rambler.ru
7	6	Лютенкова	Ева	2003-05-07	+7-997-558-57-95	eva20303@mail.ru
8	8	Рейзенбук	Владлен	2002-12-06	+7-953-138-83-45	reizenbukkvlad@yandex.ru
\.


--
-- Data for Name: StudentPerformance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentPerformance" ("PerformanceID", "StudentID", "SubjectName", "Mark") FROM stdin;
1	1	Английский язык	95
2	3	ТРЗБД	100
3	2	ОКФКС	100
4	6	Высшая математика	85
5	4	ПиТПМ	82
\.


--
-- Data for Name: Subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subject" ("SubjectID", "SubjectName") FROM stdin;
1	Прикладная информатика
2	Тестирование ПО
3	Философия
4	История
5	Основы программирования
6	Высшая математика
7	Основы дизайна
8	Физическая культура
9	Архитектура Аппаратных Средств
10	Основы математического анализа
11	Право
12	Русский язык
\.


--
-- Data for Name: Teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Teacher" ("TeacherID", "FName", "SName", "PhoneNum", "Email") FROM stdin;
1	Голубцова	Анастасия	+7-983-332-5302	golnastya@gmail.com
2	Новикова	Юлия	+7-923-554-2553	noviyulia@yandex.ru
3	Погодин	Василий	+7-905-992-5724	vasiliy1994@hotmail.com
4	Корявин	Иван	+7-955-735-5317	ivan.koryavin@mail.ru
5	Покровская	Марианна	+7-988-884-8113	marianna56@ya.ru
6	Вешняков	Алексей	+7-949-445-9680	aleksey1982@mail.ru
7	Ядучева	Сюзанна	+7-911-149-7334	syuzanna02111960@gmail.com
8	Сухомлин	Марк	+7-910-496-6635	mark83@rambler.ru
\.


--
-- Name: AcademicHistory AcademicHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AcademicHistory"
    ADD CONSTRAINT "AcademicHistory_pkey" PRIMARY KEY ("AHID");


--
-- Name: Address Address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY ("AddressID");


--
-- Name: Group Group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("GroupID");


--
-- Name: Schedule Schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT "Schedule_pkey" PRIMARY KEY ("ScheduleSubjectID");


--
-- Name: StudentPerformance StudentPerformance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentPerformance"
    ADD CONSTRAINT "StudentPerformance_pkey" PRIMARY KEY ("PerformanceID");


--
-- Name: Student Student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_pkey" PRIMARY KEY ("StudentID");


--
-- Name: Subject Subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT "Subject_pkey" PRIMARY KEY ("SubjectID");


--
-- Name: Teacher Teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Teacher_pkey" PRIMARY KEY ("TeacherID");


--
-- Name: Student FKAddressID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "FKAddressID" FOREIGN KEY ("AddressID") REFERENCES public."Address"("AddressID") NOT VALID;


--
-- Name: Schedule FKGroupID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT "FKGroupID" FOREIGN KEY ("GroupID") REFERENCES public."Group"("GroupID") NOT VALID;


--
-- Name: StudentPerformance FKStudentID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentPerformance"
    ADD CONSTRAINT "FKStudentID" FOREIGN KEY ("StudentID") REFERENCES public."Student"("StudentID") NOT VALID;


--
-- Name: AcademicHistory FKStudentID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AcademicHistory"
    ADD CONSTRAINT "FKStudentID" FOREIGN KEY ("StudentID") REFERENCES public."Student"("StudentID") NOT VALID;


--
-- Name: Schedule FKSubjectID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT "FKSubjectID" FOREIGN KEY ("SubjectID") REFERENCES public."Subject"("SubjectID") NOT VALID;


--
-- Name: Schedule FKTeacherID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT "FKTeacherID" FOREIGN KEY ("TeacherID") REFERENCES public."Teacher"("TeacherID") NOT VALID;


--
-- PostgreSQL database dump complete
--

