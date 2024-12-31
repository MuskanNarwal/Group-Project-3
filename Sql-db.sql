--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-30 20:21:56

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
-- TOC entry 217 (class 1259 OID 25159)
-- Name: incidence_rate_myocardial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incidence_rate_myocardial (
    geography character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    fiscal_year character varying(20) NOT NULL,
    rate_per_100k numeric,
    counts numeric,
    population numeric
);


ALTER TABLE public.incidence_rate_myocardial OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25145)
-- Name: incidence_rates_heart_failure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incidence_rates_heart_failure (
    geography character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    fiscal_year character varying(20) NOT NULL,
    rate_per_100k numeric,
    counts numeric,
    population numeric
);


ALTER TABLE public.incidence_rates_heart_failure OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25152)
-- Name: incidence_rates_ischemics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incidence_rates_ischemics (
    geography character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    fiscal_year character varying(20) NOT NULL,
    rate_per_100k numeric,
    counts numeric,
    population numeric
);


ALTER TABLE public.incidence_rates_ischemics OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25180)
-- Name: mortality_rate_myocardial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mortality_rate_myocardial (
    geography character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    fiscal_year character varying(20) NOT NULL,
    rate_per_100k numeric,
    population numeric
);


ALTER TABLE public.mortality_rate_myocardial OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25166)
-- Name: mortality_rates_heart_failure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mortality_rates_heart_failure (
    geography character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    fiscal_year character varying(20) NOT NULL,
    rate_per_100k numeric,
    population numeric
);


ALTER TABLE public.mortality_rates_heart_failure OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25173)
-- Name: mortality_rates_ischemics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mortality_rates_ischemics (
    geography character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    fiscal_year character varying(20) NOT NULL,
    rate_per_100k numeric,
    population numeric
);


ALTER TABLE public.mortality_rates_ischemics OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 25159)
-- Dependencies: 217
-- Data for Name: incidence_rate_myocardial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.incidence_rate_myocardial (geography, sex, fiscal_year, rate_per_100k, counts, population) FROM stdin;
Canada	Both sexes	2000-2001	266.0	61410.0	23044910.0
Canada	Both sexes	2001-2002	266.0	62230.0	23371450.0
Canada	Both sexes	2002-2003	264.0	62575.0	23693705.0
Canada	Both sexes	2003-2004	263.0	63185.0	24023015.0
Canada	Both sexes	2004-2005	254.0	61945.0	24344890.0
Canada	Both sexes	2005-2006	245.0	60540.0	24706090.0
Canada	Both sexes	2006-2007	235.0	58570.0	24904280.0
Canada	Both sexes	2007-2008	238.0	59960.0	25147215.0
Canada	Both sexes	2008-2009	235.0	60890.0	25881770.0
Canada	Both sexes	2009-2010	229.0	60155.0	26263080.0
Canada	Both sexes	2010-2011	229.0	61320.0	26724100.0
Canada	Both sexes	2011-2012	227.0	61555.0	27165485.0
Canada	Both sexes	2012-2013	230.0	63490.0	27618635.0
Canada	Both sexes	2013-2014	226.0	63320.0	28033700.0
Canada	Both sexes	2014-2015	225.0	63750.0	28395395.0
Canada	Both sexes	2015-2016	223.0	63975.0	28738580.0
Canada	Both sexes	2016-2017	227.0	66135.0	29133585.0
Canada	Both sexes	2017-2018	225.0	66565.0	29524790.0
Canada	Both sexes	2018-2019	224.0	67235.0	29987655.0
Canada	Both sexes	2019-2020	214.0	65210.0	30522710.0
Canada	Both sexes	2020-2021*	205.0	62875.0	30680045.0
Canada	Both sexes	2021-2022*	209.0	63810.0	30601870.0
Canada	Both sexes	2022-2023*	199.0	62315.0	31374210.0
Newfoundland and Labrador	Both sexes	2000-2001	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2001-2002	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2002-2003	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2003-2004	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2004-2005	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2005-2006	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2006-2007	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2007-2008	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2008-2009	345.0	1435.0	416130.0
Newfoundland and Labrador	Both sexes	2009-2010	324.0	1365.0	420855.0
Newfoundland and Labrador	Both sexes	2010-2011	316.0	1345.0	425145.0
Newfoundland and Labrador	Both sexes	2011-2012	285.0	1220.0	428450.0
Newfoundland and Labrador	Both sexes	2012-2013	289.0	1245.0	430685.0
Newfoundland and Labrador	Both sexes	2013-2014	296.0	1280.0	431915.0
Newfoundland and Labrador	Both sexes	2014-2015	298.0	1285.0	430905.0
Newfoundland and Labrador	Both sexes	2015-2016	321.0	1380.0	429295.0
Newfoundland and Labrador	Both sexes	2016-2017	320.0	1380.0	431490.0
Newfoundland and Labrador	Both sexes	2017-2018	323.0	1385.0	429100.0
Newfoundland and Labrador	Both sexes	2018-2019	321.0	1375.0	428530.0
Newfoundland and Labrador	Both sexes	2019-2020	297.0	1275.0	429375.0
Newfoundland and Labrador	Both sexes	2020-2021*	293.0	1260.0	429315.0
Newfoundland and Labrador	Both sexes	2021-2022*	300.0	1300.0	433100.0
Newfoundland and Labrador	Both sexes	2022-2023*	301.0	1320.0	438445.0
Prince Edward Island	Both sexes	2000-2001	317.0	330.0	104125.0
Prince Edward Island	Both sexes	2001-2002	326.0	340.0	104330.0
Prince Edward Island	Both sexes	2002-2003	287.0	300.0	104655.0
Prince Edward Island	Both sexes	2003-2004	302.0	320.0	106130.0
Prince Edward Island	Both sexes	2004-2005	271.0	290.0	106995.0
Prince Edward Island	Both sexes	2005-2006	283.0	305.0	107635.0
Prince Edward Island	Both sexes	2006-2007	253.0	275.0	108510.0
Prince Edward Island	Both sexes	2007-2008	341.0	375.0	109845.0
Prince Edward Island	Both sexes	2008-2009	313.0	350.0	111990.0
Prince Edward Island	Both sexes	2009-2010	295.0	335.0	113460.0
Prince Edward Island	Both sexes	2010-2011	339.0	390.0	115080.0
Prince Edward Island	Both sexes	2011-2012	309.0	360.0	116590.0
Prince Edward Island	Both sexes	2012-2013	267.0	315.0	117990.0
Prince Edward Island	Both sexes	2013-2014	269.0	320.0	118850.0
Prince Edward Island	Both sexes	2014-2015	285.0	340.0	119325.0
Prince Edward Island	Both sexes	2015-2016	272.0	325.0	119470.0
Prince Edward Island	Both sexes	2016-2017	286.0	345.0	120830.0
Prince Edward Island	Both sexes	2017-2018	277.0	340.0	122945.0
Prince Edward Island	Both sexes	2018-2019	295.0	370.0	125585.0
Prince Edward Island	Both sexes	2019-2020	231.0	300.0	129590.0
Prince Edward Island	Both sexes	2020-2021*	239.0	315.0	131570.0
Prince Edward Island	Both sexes	2021-2022*	256.0	345.0	134505.0
Prince Edward Island	Both sexes	2022-2023*	242.0	335.0	138570.0
Nova Scotia	Both sexes	2000-2001	296.0	2125.0	717530.0
Nova Scotia	Both sexes	2001-2002	305.0	2205.0	721895.0
Nova Scotia	Both sexes	2002-2003	318.0	2315.0	727040.0
Nova Scotia	Both sexes	2003-2004	340.0	2490.0	733040.0
Nova Scotia	Both sexes	2004-2005	311.0	2300.0	739045.0
Nova Scotia	Both sexes	2005-2006	308.0	2290.0	744545.0
Nova Scotia	Both sexes	2006-2007	295.0	2215.0	749685.0
Nova Scotia	Both sexes	2007-2008	325.0	2445.0	753235.0
Nova Scotia	Both sexes	2008-2009	309.0	2350.0	759620.0
Nova Scotia	Both sexes	2009-2010	314.0	2410.0	766565.0
Nova Scotia	Both sexes	2010-2011	309.0	2395.0	775290.0
Nova Scotia	Both sexes	2011-2012	298.0	2335.0	782300.0
Nova Scotia	Both sexes	2012-2013	321.0	2525.0	787740.0
Nova Scotia	Both sexes	2013-2014	294.0	2330.0	793575.0
Nova Scotia	Both sexes	2014-2015	282.0	2250.0	797640.0
Nova Scotia	Both sexes	2015-2016	294.0	2360.0	802950.0
Nova Scotia	Both sexes	2016-2017	293.0	2380.0	811080.0
Nova Scotia	Both sexes	2017-2018	277.0	2270.0	820365.0
Nova Scotia	Both sexes	2018-2019	278.0	2310.0	831560.0
Nova Scotia	Both sexes	2019-2020	271.0	2295.0	846220.0
Nova Scotia	Both sexes	2020-2021*	280.0	2415.0	862845.0
Nova Scotia	Both sexes	2021-2022*	275.0	2420.0	880915.0
Nova Scotia	Both sexes	2022-2023*	254.0	2295.0	903825.0
New Brunswick	Both sexes	2000-2001	323.0	1845.0	571190.0
New Brunswick	Both sexes	2001-2002	323.0	1845.0	571765.0
New Brunswick	Both sexes	2002-2003	320.0	1835.0	573760.0
New Brunswick	Both sexes	2003-2004	291.0	1675.0	576530.0
New Brunswick	Both sexes	2004-2005	292.0	1690.0	578930.0
New Brunswick	Both sexes	2005-2006	287.0	1670.0	581550.0
New Brunswick	Both sexes	2006-2007	289.0	1685.0	582705.0
New Brunswick	Both sexes	2007-2008	318.0	1860.0	585170.0
New Brunswick	Both sexes	2008-2009	314.0	1850.0	589100.0
New Brunswick	Both sexes	2009-2010	296.0	1740.0	586920.0
New Brunswick	Both sexes	2010-2011	312.0	1850.0	592185.0
New Brunswick	Both sexes	2011-2012	301.0	1800.0	598185.0
New Brunswick	Both sexes	2012-2013	317.0	1905.0	600230.0
New Brunswick	Both sexes	2013-2014	309.0	1860.0	601160.0
New Brunswick	Both sexes	2014-2015	302.0	1820.0	603275.0
New Brunswick	Both sexes	2015-2016	312.0	1895.0	608075.0
New Brunswick	Both sexes	2016-2017	319.0	1960.0	613780.0
New Brunswick	Both sexes	2017-2018	322.0	1995.0	619640.0
New Brunswick	Both sexes	2018-2019	319.0	1995.0	625925.0
New Brunswick	Both sexes	2019-2020	313.0	1980.0	633195.0
New Brunswick	Both sexes	2020-2021*	294.0	1880.0	639470.0
New Brunswick	Both sexes	2021-2022*	\N	0.0	0.0
New Brunswick	Both sexes	2022-2023*	\N	0.0	0.0
Quebec	Both sexes	2000-2001	286.0	15980.0	5596545.0
Quebec	Both sexes	2001-2002	281.0	15830.0	5641055.0
Quebec	Both sexes	2002-2003	278.0	15775.0	5681940.0
Quebec	Both sexes	2003-2004	291.0	16670.0	5729165.0
Quebec	Both sexes	2004-2005	272.0	15710.0	5776175.0
Quebec	Both sexes	2005-2006	272.0	15825.0	5820080.0
Quebec	Both sexes	2006-2007	253.0	14850.0	5865360.0
Quebec	Both sexes	2007-2008	256.0	15125.0	5903860.0
Quebec	Both sexes	2008-2009	249.0	14790.0	5948465.0
Quebec	Both sexes	2009-2010	244.0	14640.0	6008215.0
Quebec	Both sexes	2010-2011	246.0	14950.0	6075540.0
Quebec	Both sexes	2011-2012	260.0	15950.0	6138945.0
Quebec	Both sexes	2012-2013	275.0	17025.0	6201195.0
Quebec	Both sexes	2013-2014	278.0	17375.0	6255015.0
Quebec	Both sexes	2014-2015	286.0	18015.0	6303910.0
Quebec	Both sexes	2015-2016	291.0	18465.0	6342220.0
Quebec	Both sexes	2016-2017	305.0	19490.0	6384980.0
Quebec	Both sexes	2017-2018	321.0	20620.0	6427440.0
Quebec	Both sexes	2018-2019	323.0	20910.0	6469285.0
Quebec	Both sexes	2019-2020	293.0	19125.0	6526550.0
Quebec	Both sexes	2020-2021*	292.0	19150.0	6559300.0
Quebec	Both sexes	2021-2022*	323.0	21360.0	6616790.0
Quebec	Both sexes	2022-2023*	327.0	21920.0	6698060.0
Ontario	Both sexes	2000-2001	280.0	25605.0	9159635.0
Ontario	Both sexes	2001-2002	284.0	26480.0	9331310.0
Ontario	Both sexes	2002-2003	279.0	26550.0	9509900.0
Ontario	Both sexes	2003-2004	266.0	25780.0	9676985.0
Ontario	Both sexes	2004-2005	253.0	24930.0	9840060.0
Ontario	Both sexes	2005-2006	239.0	23930.0	10007200.0
Ontario	Both sexes	2006-2007	233.0	23300.0	10020680.0
Ontario	Both sexes	2007-2008	232.0	23365.0	10051235.0
Ontario	Both sexes	2008-2009	229.0	23230.0	10138565.0
Ontario	Both sexes	2009-2010	222.0	22890.0	10305500.0
Ontario	Both sexes	2010-2011	224.0	23475.0	10482110.0
Ontario	Both sexes	2011-2012	213.0	22700.0	10661285.0
Ontario	Both sexes	2012-2013	212.0	22975.0	10839705.0
Ontario	Both sexes	2013-2014	209.0	23005.0	10999500.0
Ontario	Both sexes	2014-2015	207.0	22985.0	11107850.0
Ontario	Both sexes	2015-2016	200.0	22455.0	11251840.0
Ontario	Both sexes	2016-2017	202.0	23150.0	11432590.0
Ontario	Both sexes	2017-2018	194.0	22480.0	11605380.0
Ontario	Both sexes	2018-2019	190.0	22515.0	11823545.0
Ontario	Both sexes	2019-2020	183.0	22195.0	12096665.0
Ontario	Both sexes	2020-2021*	171.0	20575.0	12063050.0
Ontario	Both sexes	2021-2022*	172.0	21175.0	12315415.0
Ontario	Both sexes	2022-2023*	159.0	20140.0	12633055.0
Manitoba	Both sexes	2000-2001	218.0	1860.0	852135.0
Manitoba	Both sexes	2001-2002	206.0	1760.0	855740.0
Manitoba	Both sexes	2002-2003	219.0	1880.0	859660.0
Manitoba	Both sexes	2003-2004	216.0	1875.0	866915.0
Manitoba	Both sexes	2004-2005	304.0	2660.0	873670.0
Manitoba	Both sexes	2005-2006	278.0	2440.0	878950.0
Manitoba	Both sexes	2006-2007	291.0	2570.0	884325.0
Manitoba	Both sexes	2007-2008	281.0	2505.0	891535.0
Manitoba	Both sexes	2008-2009	289.0	2605.0	901985.0
Manitoba	Both sexes	2009-2010	282.0	2575.0	913455.0
Manitoba	Both sexes	2010-2011	275.0	2550.0	928620.0
Manitoba	Both sexes	2011-2012	256.0	2415.0	945040.0
Manitoba	Both sexes	2012-2013	240.0	2315.0	963505.0
Manitoba	Both sexes	2013-2014	223.0	2180.0	979745.0
Manitoba	Both sexes	2014-2015	216.0	2145.0	995280.0
Manitoba	Both sexes	2015-2016	218.0	2195.0	1007780.0
Manitoba	Both sexes	2016-2017	215.0	2200.0	1022585.0
Manitoba	Both sexes	2017-2018	214.0	2215.0	1035550.0
Manitoba	Both sexes	2018-2019	209.0	2180.0	1043920.0
Manitoba	Both sexes	2019-2020	210.0	2200.0	1045515.0
Manitoba	Both sexes	2020-2021*	192.0	2025.0	1053260.0
Manitoba	Both sexes	2021-2022*	197.0	2105.0	1068865.0
Manitoba	Both sexes	2022-2023*	176.0	1935.0	1101780.0
Saskatchewan	Both sexes	2000-2001	311.0	2305.0	741395.0
Saskatchewan	Both sexes	2001-2002	280.0	2080.0	744055.0
Saskatchewan	Both sexes	2002-2003	263.0	1965.0	747930.0
Saskatchewan	Both sexes	2003-2004	258.0	1915.0	742060.0
Saskatchewan	Both sexes	2004-2005	291.0	2180.0	749425.0
Saskatchewan	Both sexes	2005-2006	278.0	2100.0	754920.0
Saskatchewan	Both sexes	2006-2007	265.0	1990.0	749820.0
Saskatchewan	Both sexes	2007-2008	261.0	2000.0	765190.0
Saskatchewan	Both sexes	2008-2009	266.0	2080.0	782145.0
Saskatchewan	Both sexes	2009-2010	243.0	1915.0	787340.0
Saskatchewan	Both sexes	2010-2011	239.0	1925.0	804295.0
Saskatchewan	Both sexes	2011-2012	222.0	1830.0	823440.0
Saskatchewan	Both sexes	2012-2013	228.0	1900.0	834390.0
Saskatchewan	Both sexes	2013-2014	204.0	1735.0	851890.0
Saskatchewan	Both sexes	2014-2015	202.0	1760.0	872710.0
Saskatchewan	Both sexes	2015-2016	209.0	1820.0	871820.0
Saskatchewan	Both sexes	2016-2017	200.0	1775.0	887290.0
Saskatchewan	Both sexes	2017-2018	189.0	1705.0	900985.0
Saskatchewan	Both sexes	2018-2019	195.0	1790.0	917650.0
Saskatchewan	Both sexes	2019-2020	197.0	1800.0	915605.0
Saskatchewan	Both sexes	2020-2021*	192.0	1770.0	924255.0
Saskatchewan	Both sexes	2021-2022*	184.0	1720.0	936045.0
Saskatchewan	Both sexes	2022-2023*	169.0	1595.0	942705.0
Alberta	Both sexes	2000-2001	209.0	4625.0	2210010.0
Alberta	Both sexes	2001-2002	216.0	4895.0	2263150.0
Alberta	Both sexes	2002-2003	222.0	5140.0	2313570.0
Alberta	Both sexes	2003-2004	227.0	5350.0	2357665.0
Alberta	Both sexes	2004-2005	222.0	5305.0	2394605.0
Alberta	Both sexes	2005-2006	219.0	5370.0	2450480.0
Alberta	Both sexes	2006-2007	208.0	5270.0	2537600.0
Alberta	Both sexes	2007-2008	202.0	5290.0	2617630.0
Alberta	Both sexes	2008-2009	192.0	5190.0	2697850.0
Alberta	Both sexes	2009-2010	187.0	5185.0	2768765.0
Alberta	Both sexes	2010-2011	186.0	5310.0	2850205.0
Alberta	Both sexes	2011-2012	189.0	5575.0	2943255.0
Alberta	Both sexes	2012-2013	184.0	5660.0	3070020.0
Alberta	Both sexes	2013-2014	175.0	5600.0	3199205.0
Alberta	Both sexes	2014-2015	167.0	5520.0	3314580.0
Alberta	Both sexes	2015-2016	164.0	5555.0	3393235.0
Alberta	Both sexes	2016-2017	165.0	5695.0	3445205.0
Alberta	Both sexes	2017-2018	164.0	5750.0	3498015.0
Alberta	Both sexes	2018-2019	164.0	5835.0	3568275.0
Alberta	Both sexes	2019-2020	165.0	5995.0	3642160.0
Alberta	Both sexes	2020-2021*	153.0	5655.0	3686430.0
Alberta	Both sexes	2021-2022*	147.0	5525.0	3758065.0
Alberta	Both sexes	2022-2023*	131.0	5120.0	3901385.0
British Columbia	Both sexes	2000-2001	218.0	6685.0	3062880.0
British Columbia	Both sexes	2001-2002	218.0	6765.0	3108570.0
British Columbia	Both sexes	2002-2003	215.0	6775.0	3144880.0
British Columbia	Both sexes	2003-2004	221.0	7080.0	3204005.0
British Columbia	Both sexes	2004-2005	210.0	6845.0	3254350.0
British Columbia	Both sexes	2005-2006	199.0	6575.0	3310655.0
British Columbia	Both sexes	2006-2007	190.0	6370.0	3354870.0
British Columbia	Both sexes	2007-2008	203.0	6935.0	3417950.0
British Columbia	Both sexes	2008-2009	200.0	6950.0	3482745.0
British Columbia	Both sexes	2009-2010	198.0	7015.0	3537175.0
British Columbia	Both sexes	2010-2011	195.0	7010.0	3594640.0
British Columbia	Both sexes	2011-2012	199.0	7240.0	3644210.0
British Columbia	Both sexes	2012-2013	204.0	7505.0	3687005.0
British Columbia	Both sexes	2013-2014	202.0	7510.0	3715785.0
British Columbia	Both sexes	2014-2015	199.0	7495.0	3762965.0
British Columbia	Both sexes	2015-2016	193.0	7365.0	3823295.0
British Columbia	Both sexes	2016-2017	195.0	7595.0	3893525.0
British Columbia	Both sexes	2017-2018	192.0	7645.0	3974245.0
British Columbia	Both sexes	2018-2019	192.0	7810.0	4061040.0
British Columbia	Both sexes	2019-2020	189.0	7885.0	4164550.0
British Columbia	Both sexes	2020-2021*	182.0	7695.0	4237180.0
British Columbia	Both sexes	2021-2022*	177.0	7705.0	4363415.0
British Columbia	Both sexes	2022-2023*	166.0	7500.0	4520815.0
Yukon Territory	Both sexes	2000-2001	\N	0.0	0.0
Yukon Territory	Both sexes	2001-2002	\N	0.0	0.0
Yukon Territory	Both sexes	2002-2003	\N	0.0	0.0
Yukon Territory	Both sexes	2003-2004	\N	0.0	0.0
Yukon Territory	Both sexes	2004-2005	\N	0.0	0.0
Yukon Territory	Both sexes	2005-2006	\N	0.0	0.0
Yukon Territory	Both sexes	2006-2007	\N	0.0	0.0
Yukon Territory	Both sexes	2007-2008	\N	0.0	0.0
Yukon Territory	Both sexes	2008-2009	\N	0.0	0.0
Yukon Territory	Both sexes	2009-2010	\N	0.0	0.0
Yukon Territory	Both sexes	2010-2011	175.0	50.0	28505.0
Yukon Territory	Both sexes	2011-2012	205.0	60.0	29305.0
Yukon Territory	Both sexes	2012-2013	199.0	60.0	30145.0
Yukon Territory	Both sexes	2013-2014	213.0	65.0	30575.0
Yukon Territory	Both sexes	2014-2015	194.0	60.0	30935.0
Yukon Territory	Both sexes	2015-2016	207.0	65.0	31450.0
Yukon Territory	Both sexes	2016-2017	218.0	70.0	32170.0
Yukon Territory	Both sexes	2017-2018	167.0	55.0	32995.0
Yukon Territory	Both sexes	2018-2019	194.0	65.0	33495.0
Yukon Territory	Both sexes	2019-2020	218.0	75.0	34325.0
Yukon Territory	Both sexes	2020-2021*	187.0	65.0	34830.0
Yukon Territory	Both sexes	2021-2022*	182.0	65.0	35645.0
Yukon Territory	Both sexes	2022-2023*	206.0	75.0	36400.0
Northwest Territories	Both sexes	2000-2001	153.0	45.0	29460.0
Northwest Territories	Both sexes	2001-2002	85.0	25.0	29585.0
Northwest Territories	Both sexes	2002-2003	115.0	35.0	30365.0
Northwest Territories	Both sexes	2003-2004	98.0	30.0	30530.0
Northwest Territories	Both sexes	2004-2005	126.0	40.0	31635.0
Northwest Territories	Both sexes	2005-2006	108.0	35.0	32270.0
Northwest Territories	Both sexes	2006-2007	108.0	35.0	32405.0
Northwest Territories	Both sexes	2007-2008	105.0	35.0	33330.0
Northwest Territories	Both sexes	2008-2009	117.0	40.0	34100.0
Northwest Territories	Both sexes	2009-2010	143.0	50.0	34845.0
Northwest Territories	Both sexes	2010-2011	158.0	50.0	31570.0
Northwest Territories	Both sexes	2011-2012	137.0	45.0	32730.0
Northwest Territories	Both sexes	2012-2013	148.0	50.0	33805.0
Northwest Territories	Both sexes	2013-2014	131.0	45.0	34260.0
Northwest Territories	Both sexes	2014-2015	165.0	55.0	33350.0
Northwest Territories	Both sexes	2015-2016	206.0	70.0	33950.0
Northwest Territories	Both sexes	2016-2017	190.0	65.0	34180.0
Northwest Territories	Both sexes	2017-2018	193.0	65.0	33620.0
Northwest Territories	Both sexes	2018-2019	177.0	60.0	33940.0
Northwest Territories	Both sexes	2019-2020	146.0	50.0	34135.0
Northwest Territories	Both sexes	2020-2021*	148.0	50.0	33690.0
Northwest Territories	Both sexes	2021-2022*	148.0	50.0	33895.0
Northwest Territories	Both sexes	2022-2023*	134.0	45.0	33655.0
Nunavut	Both sexes	2000-2001	\N	0.0	0.0
Nunavut	Both sexes	2001-2002	\N	0.0	0.0
Nunavut	Both sexes	2002-2003	\N	0.0	0.0
Nunavut	Both sexes	2003-2004	\N	0.0	0.0
Nunavut	Both sexes	2004-2005	\N	0.0	0.0
Nunavut	Both sexes	2005-2006	56.0	10.0	17820.0
Nunavut	Both sexes	2006-2007	82.0	15.0	18320.0
Nunavut	Both sexes	2007-2008	110.0	20.0	18230.0
Nunavut	Both sexes	2008-2009	79.0	15.0	19070.0
Nunavut	Both sexes	2009-2010	125.0	25.0	19970.0
Nunavut	Both sexes	2010-2011	96.0	20.0	20900.0
Nunavut	Both sexes	2011-2012	92.0	20.0	21735.0
Nunavut	Both sexes	2012-2013	135.0	30.0	22230.0
Nunavut	Both sexes	2013-2014	90.0	20.0	22240.0
Nunavut	Both sexes	2014-2015	88.0	20.0	22665.0
Nunavut	Both sexes	2015-2016	108.0	25.0	23205.0
Nunavut	Both sexes	2016-2017	105.0	25.0	23865.0
Nunavut	Both sexes	2017-2018	102.0	25.0	24495.0
Nunavut	Both sexes	2018-2019	120.0	30.0	24910.0
Nunavut	Both sexes	2019-2020	101.0	25.0	24805.0
Nunavut	Both sexes	2020-2021*	80.0	20.0	24850.0
Nunavut	Both sexes	2021-2022*	159.0	40.0	25220.0
Nunavut	Both sexes	2022-2023*	137.0	35.0	25515.0
\.


--
-- TOC entry 4862 (class 0 OID 25145)
-- Dependencies: 215
-- Data for Name: incidence_rates_heart_failure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.incidence_rates_heart_failure (geography, sex, fiscal_year, rate_per_100k, counts, population) FROM stdin;
Canada	Both sexes	2000-2001	731.0	100690.0	13779180.0
Canada	Both sexes	2001-2002	687.0	97115.0	14138230.0
Canada	Both sexes	2002-2003	632.0	91705.0	14510750.0
Canada	Both sexes	2003-2004	613.0	91280.0	14883465.0
Canada	Both sexes	2004-2005	587.0	89510.0	15241370.0
Canada	Both sexes	2005-2006	564.0	87795.0	15579915.0
Canada	Both sexes	2006-2007	550.0	86860.0	15797225.0
Canada	Both sexes	2007-2008	539.0	86365.0	16023230.0
Canada	Both sexes	2008-2009	553.0	91525.0	16551600.0
Canada	Both sexes	2009-2010	543.0	91460.0	16853075.0
Canada	Both sexes	2010-2011	529.0	90925.0	17192945.0
Canada	Both sexes	2011-2012	525.0	91910.0	17505415.0
Canada	Both sexes	2012-2013	521.0	92855.0	17813710.0
Canada	Both sexes	2013-2014	535.0	96785.0	18100625.0
Canada	Both sexes	2014-2015	552.0	101280.0	18351415.0
Canada	Both sexes	2015-2016	544.0	101185.0	18610495.0
Canada	Both sexes	2016-2017	538.0	101655.0	18898575.0
Canada	Both sexes	2017-2018	557.0	106765.0	19181935.0
Canada	Both sexes	2018-2019	560.0	109105.0	19485510.0
Canada	Both sexes	2019-2020	560.0	111030.0	19822955.0
Canada	Both sexes	2020-2021*	528.0	105555.0	19984460.0
Canada	Both sexes	2021-2022*	573.0	114070.0	19893240.0
Canada	Both sexes	2022-2023*	601.0	122025.0	20300185.0
Newfoundland and Labrador	Both sexes	2000-2001	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2001-2002	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2002-2003	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2003-2004	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2004-2005	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2005-2006	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2006-2007	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2007-2008	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2008-2009	834.0	2310.0	276825.0
Newfoundland and Labrador	Both sexes	2009-2010	783.0	2200.0	280925.0
Newfoundland and Labrador	Both sexes	2010-2011	497.0	1415.0	284905.0
Newfoundland and Labrador	Both sexes	2011-2012	485.0	1405.0	289415.0
Newfoundland and Labrador	Both sexes	2012-2013	457.0	1340.0	293170.0
Newfoundland and Labrador	Both sexes	2013-2014	447.0	1325.0	296320.0
Newfoundland and Labrador	Both sexes	2014-2015	508.0	1515.0	298485.0
Newfoundland and Labrador	Both sexes	2015-2016	475.0	1425.0	300105.0
Newfoundland and Labrador	Both sexes	2016-2017	473.0	1435.0	303300.0
Newfoundland and Labrador	Both sexes	2017-2018	487.0	1485.0	304780.0
Newfoundland and Labrador	Both sexes	2018-2019	475.0	1455.0	306165.0
Newfoundland and Labrador	Both sexes	2019-2020	447.0	1380.0	308420.0
Newfoundland and Labrador	Both sexes	2020-2021*	473.0	1470.0	310860.0
Newfoundland and Labrador	Both sexes	2021-2022*	442.0	1390.0	314445.0
Newfoundland and Labrador	Both sexes	2022-2023*	438.0	1395.0	318140.0
Prince Edward Island	Both sexes	2000-2001	767.0	485.0	63205.0
Prince Edward Island	Both sexes	2001-2002	794.0	510.0	64220.0
Prince Edward Island	Both sexes	2002-2003	734.0	480.0	65415.0
Prince Edward Island	Both sexes	2003-2004	701.0	470.0	67040.0
Prince Edward Island	Both sexes	2004-2005	622.0	425.0	68305.0
Prince Edward Island	Both sexes	2005-2006	577.0	400.0	69350.0
Prince Edward Island	Both sexes	2006-2007	610.0	430.0	70520.0
Prince Edward Island	Both sexes	2007-2008	542.0	390.0	71960.0
Prince Edward Island	Both sexes	2008-2009	542.0	400.0	73825.0
Prince Edward Island	Both sexes	2009-2010	571.0	430.0	75275.0
Prince Edward Island	Both sexes	2010-2011	573.0	440.0	76840.0
Prince Edward Island	Both sexes	2011-2012	574.0	450.0	78335.0
Prince Edward Island	Both sexes	2012-2013	567.0	450.0	79425.0
Prince Edward Island	Both sexes	2013-2014	505.0	405.0	80240.0
Prince Edward Island	Both sexes	2014-2015	544.0	440.0	80875.0
Prince Edward Island	Both sexes	2015-2016	509.0	415.0	81500.0
Prince Edward Island	Both sexes	2016-2017	539.0	445.0	82525.0
Prince Edward Island	Both sexes	2017-2018	525.0	440.0	83870.0
Prince Edward Island	Both sexes	2018-2019	539.0	460.0	85355.0
Prince Edward Island	Both sexes	2019-2020	547.0	475.0	86800.0
Prince Edward Island	Both sexes	2020-2021*	484.0	425.0	87855.0
Prince Edward Island	Both sexes	2021-2022*	463.0	415.0	89620.0
Prince Edward Island	Both sexes	2022-2023*	535.0	490.0	91520.0
Nova Scotia	Both sexes	2000-2001	690.0	3045.0	441345.0
Nova Scotia	Both sexes	2001-2002	658.0	2965.0	450700.0
Nova Scotia	Both sexes	2002-2003	633.0	2915.0	460455.0
Nova Scotia	Both sexes	2003-2004	608.0	2860.0	470075.0
Nova Scotia	Both sexes	2004-2005	554.0	2655.0	479560.0
Nova Scotia	Both sexes	2005-2006	533.0	2600.0	487610.0
Nova Scotia	Both sexes	2006-2007	522.0	2585.0	495405.0
Nova Scotia	Both sexes	2007-2008	524.0	2630.0	502050.0
Nova Scotia	Both sexes	2008-2009	531.0	2705.0	509610.0
Nova Scotia	Both sexes	2009-2010	533.0	2755.0	516870.0
Nova Scotia	Both sexes	2010-2011	502.0	2635.0	525100.0
Nova Scotia	Both sexes	2011-2012	491.0	2615.0	532865.0
Nova Scotia	Both sexes	2012-2013	463.0	2500.0	539660.0
Nova Scotia	Both sexes	2013-2014	469.0	2565.0	546910.0
Nova Scotia	Both sexes	2014-2015	449.0	2485.0	552890.0
Nova Scotia	Both sexes	2015-2016	476.0	2660.0	558830.0
Nova Scotia	Both sexes	2016-2017	475.0	2685.0	565160.0
Nova Scotia	Both sexes	2017-2018	485.0	2775.0	571990.0
Nova Scotia	Both sexes	2018-2019	484.0	2805.0	579670.0
Nova Scotia	Both sexes	2019-2020	510.0	3000.0	588725.0
Nova Scotia	Both sexes	2020-2021*	502.0	3000.0	597865.0
Nova Scotia	Both sexes	2021-2022*	516.0	3150.0	610450.0
Nova Scotia	Both sexes	2022-2023*	556.0	3470.0	624350.0
New Brunswick	Both sexes	2000-2001	797.0	2780.0	348845.0
New Brunswick	Both sexes	2001-2002	733.0	2600.0	354760.0
New Brunswick	Both sexes	2002-2003	688.0	2485.0	361385.0
New Brunswick	Both sexes	2003-2004	636.0	2340.0	368105.0
New Brunswick	Both sexes	2004-2005	606.0	2270.0	374520.0
New Brunswick	Both sexes	2005-2006	539.0	2050.0	380665.0
New Brunswick	Both sexes	2006-2007	570.0	2195.0	385200.0
New Brunswick	Both sexes	2007-2008	539.0	2105.0	390420.0
New Brunswick	Both sexes	2008-2009	559.0	2215.0	396045.0
New Brunswick	Both sexes	2009-2010	564.0	2240.0	397170.0
New Brunswick	Both sexes	2010-2011	558.0	2250.0	403265.0
New Brunswick	Both sexes	2011-2012	513.0	2105.0	410050.0
New Brunswick	Both sexes	2012-2013	526.0	2180.0	414640.0
New Brunswick	Both sexes	2013-2014	498.0	2085.0	418520.0
New Brunswick	Both sexes	2014-2015	561.0	2375.0	423625.0
New Brunswick	Both sexes	2015-2016	542.0	2330.0	429895.0
New Brunswick	Both sexes	2016-2017	541.0	2360.0	436170.0
New Brunswick	Both sexes	2017-2018	557.0	2455.0	440585.0
New Brunswick	Both sexes	2018-2019	557.0	2480.0	444845.0
New Brunswick	Both sexes	2019-2020	524.0	2355.0	449845.0
New Brunswick	Both sexes	2020-2021*	513.0	2335.0	454995.0
New Brunswick	Both sexes	2021-2022*	\N	0.0	0.0
New Brunswick	Both sexes	2022-2023*	\N	0.0	0.0
Quebec	Both sexes	2000-2001	659.0	22730.0	3451095.0
Quebec	Both sexes	2001-2002	621.0	21850.0	3519590.0
Quebec	Both sexes	2002-2003	574.0	20600.0	3587190.0
Quebec	Both sexes	2003-2004	572.0	20895.0	3655740.0
Quebec	Both sexes	2004-2005	554.0	20645.0	3723410.0
Quebec	Both sexes	2005-2006	521.0	19685.0	3780895.0
Quebec	Both sexes	2006-2007	492.0	18880.0	3835230.0
Quebec	Both sexes	2007-2008	498.0	19350.0	3882140.0
Quebec	Both sexes	2008-2009	517.0	20315.0	3926865.0
Quebec	Both sexes	2009-2010	511.0	20310.0	3974130.0
Quebec	Both sexes	2010-2011	499.0	20065.0	4020445.0
Quebec	Both sexes	2011-2012	510.0	20735.0	4062040.0
Quebec	Both sexes	2012-2013	509.0	20900.0	4102530.0
Quebec	Both sexes	2013-2014	525.0	21735.0	4141760.0
Quebec	Both sexes	2014-2015	535.0	22375.0	4184455.0
Quebec	Both sexes	2015-2016	546.0	23100.0	4227290.0
Quebec	Both sexes	2016-2017	553.0	23620.0	4273325.0
Quebec	Both sexes	2017-2018	557.0	24050.0	4321255.0
Quebec	Both sexes	2018-2019	563.0	24585.0	4369175.0
Quebec	Both sexes	2019-2020	558.0	24720.0	4429245.0
Quebec	Both sexes	2020-2021*	507.0	22720.0	4483410.0
Quebec	Both sexes	2021-2022*	592.0	26865.0	4538595.0
Quebec	Both sexes	2022-2023*	621.0	28550.0	4597900.0
Ontario	Both sexes	2000-2001	746.0	40355.0	5408570.0
Ontario	Both sexes	2001-2002	699.0	38975.0	5577515.0
Ontario	Both sexes	2002-2003	630.0	36265.0	5757980.0
Ontario	Both sexes	2003-2004	581.0	34495.0	5938500.0
Ontario	Both sexes	2004-2005	554.0	33865.0	6112085.0
Ontario	Both sexes	2005-2006	532.0	33380.0	6273110.0
Ontario	Both sexes	2006-2007	530.0	33540.0	6331415.0
Ontario	Both sexes	2007-2008	517.0	33050.0	6394270.0
Ontario	Both sexes	2008-2009	528.0	34205.0	6481170.0
Ontario	Both sexes	2009-2010	512.0	33920.0	6622910.0
Ontario	Both sexes	2010-2011	505.0	34175.0	6767020.0
Ontario	Both sexes	2011-2012	497.0	34325.0	6906380.0
Ontario	Both sexes	2012-2013	495.0	34865.0	7043475.0
Ontario	Both sexes	2013-2014	515.0	36930.0	7169730.0
Ontario	Both sexes	2014-2015	540.0	39135.0	7252255.0
Ontario	Both sexes	2015-2016	514.0	37785.0	7354745.0
Ontario	Both sexes	2016-2017	506.0	37800.0	7473715.0
Ontario	Both sexes	2017-2018	536.0	40685.0	7589675.0
Ontario	Both sexes	2018-2019	536.0	41365.0	7716180.0
Ontario	Both sexes	2019-2020	535.0	42015.0	7855945.0
Ontario	Both sexes	2020-2021*	508.0	39760.0	7826875.0
Ontario	Both sexes	2021-2022*	543.0	43250.0	7964355.0
Ontario	Both sexes	2022-2023*	573.0	46530.0	8125725.0
Manitoba	Both sexes	2000-2001	982.0	4970.0	506280.0
Manitoba	Both sexes	2001-2002	938.0	4825.0	514205.0
Manitoba	Both sexes	2002-2003	850.0	4435.0	522045.0
Manitoba	Both sexes	2003-2004	816.0	4330.0	530720.0
Manitoba	Both sexes	2004-2005	768.0	4140.0	539055.0
Manitoba	Both sexes	2005-2006	689.0	3760.0	545600.0
Manitoba	Both sexes	2006-2007	643.0	3545.0	551485.0
Manitoba	Both sexes	2007-2008	668.0	3725.0	557705.0
Manitoba	Both sexes	2008-2009	652.0	3685.0	565215.0
Manitoba	Both sexes	2009-2010	651.0	3735.0	573310.0
Manitoba	Both sexes	2010-2011	653.0	3805.0	582310.0
Manitoba	Both sexes	2011-2012	635.0	3755.0	591390.0
Manitoba	Both sexes	2012-2013	655.0	3930.0	599580.0
Manitoba	Both sexes	2013-2014	662.0	4020.0	606920.0
Manitoba	Both sexes	2014-2015	677.0	4160.0	614775.0
Manitoba	Both sexes	2015-2016	647.0	4020.0	621205.0
Manitoba	Both sexes	2016-2017	589.0	3700.0	628250.0
Manitoba	Both sexes	2017-2018	624.0	3970.0	635880.0
Manitoba	Both sexes	2018-2019	601.0	3865.0	642885.0
Manitoba	Both sexes	2019-2020	630.0	4100.0	650585.0
Manitoba	Both sexes	2020-2021*	635.0	4175.0	657700.0
Manitoba	Both sexes	2021-2022*	665.0	4425.0	665770.0
Manitoba	Both sexes	2022-2023*	699.0	4755.0	680720.0
Saskatchewan	Both sexes	2000-2001	1054.0	4650.0	441120.0
Saskatchewan	Both sexes	2001-2002	1050.0	4690.0	446520.0
Saskatchewan	Both sexes	2002-2003	986.0	4465.0	452675.0
Saskatchewan	Both sexes	2003-2004	899.0	4090.0	454835.0
Saskatchewan	Both sexes	2004-2005	841.0	3875.0	460965.0
Saskatchewan	Both sexes	2005-2006	821.0	3825.0	465925.0
Saskatchewan	Both sexes	2006-2007	846.0	3945.0	466195.0
Saskatchewan	Both sexes	2007-2008	779.0	3690.0	473950.0
Saskatchewan	Both sexes	2008-2009	744.0	3585.0	481620.0
Saskatchewan	Both sexes	2009-2010	672.0	3255.0	484445.0
Saskatchewan	Both sexes	2010-2011	691.0	3400.0	492350.0
Saskatchewan	Both sexes	2011-2012	638.0	3195.0	500430.0
Saskatchewan	Both sexes	2012-2013	616.0	3115.0	505490.0
Saskatchewan	Both sexes	2013-2014	604.0	3105.0	513870.0
Saskatchewan	Both sexes	2014-2015	614.0	3215.0	523675.0
Saskatchewan	Both sexes	2015-2016	644.0	3380.0	525235.0
Saskatchewan	Both sexes	2016-2017	608.0	3250.0	534280.0
Saskatchewan	Both sexes	2017-2018	599.0	3255.0	543580.0
Saskatchewan	Both sexes	2018-2019	580.0	3220.0	554880.0
Saskatchewan	Both sexes	2019-2020	574.0	3200.0	557975.0
Saskatchewan	Both sexes	2020-2021*	500.0	2840.0	567645.0
Saskatchewan	Both sexes	2021-2022*	539.0	3120.0	578600.0
Saskatchewan	Both sexes	2022-2023*	557.0	3260.0	585735.0
Alberta	Both sexes	2000-2001	748.0	9265.0	1239095.0
Alberta	Both sexes	2001-2002	707.0	9070.0	1282970.0
Alberta	Both sexes	2002-2003	640.0	8490.0	1325995.0
Alberta	Both sexes	2003-2004	627.0	8565.0	1365235.0
Alberta	Both sexes	2004-2005	604.0	8455.0	1400260.0
Alberta	Both sexes	2005-2006	597.0	8580.0	1438090.0
Alberta	Both sexes	2006-2007	538.0	7980.0	1483525.0
Alberta	Both sexes	2007-2008	522.0	7960.0	1525885.0
Alberta	Both sexes	2008-2009	514.0	8075.0	1569615.0
Alberta	Both sexes	2009-2010	528.0	8520.0	1612715.0
Alberta	Both sexes	2010-2011	519.0	8625.0	1662810.0
Alberta	Both sexes	2011-2012	519.0	8905.0	1715105.0
Alberta	Both sexes	2012-2013	511.0	9090.0	1779375.0
Alberta	Both sexes	2013-2014	495.0	9130.0	1843745.0
Alberta	Both sexes	2014-2015	506.0	9635.0	1904640.0
Alberta	Both sexes	2015-2016	513.0	10035.0	1956990.0
Alberta	Both sexes	2016-2017	504.0	10105.0	2004840.0
Alberta	Both sexes	2017-2018	512.0	10530.0	2055340.0
Alberta	Both sexes	2018-2019	523.0	11040.0	2111910.0
Alberta	Both sexes	2019-2020	542.0	11780.0	2173115.0
Alberta	Both sexes	2020-2021*	483.0	10755.0	2226905.0
Alberta	Both sexes	2021-2022*	515.0	11820.0	2294245.0
Alberta	Both sexes	2022-2023*	584.0	13920.0	2383450.0
British Columbia	Both sexes	2000-2001	661.0	12340.0	1865610.0
British Columbia	Both sexes	2001-2002	604.0	11555.0	1913365.0
British Columbia	Both sexes	2002-2003	586.0	11505.0	1962565.0
British Columbia	Both sexes	2003-2004	652.0	13165.0	2017735.0
British Columbia	Both sexes	2004-2005	635.0	13115.0	2066940.0
British Columbia	Both sexes	2005-2006	634.0	13410.0	2114385.0
British Columbia	Both sexes	2006-2007	634.0	13645.0	2153395.0
British Columbia	Both sexes	2007-2008	607.0	13355.0	2199345.0
British Columbia	Both sexes	2008-2009	621.0	13940.0	2244325.0
British Columbia	Both sexes	2009-2010	612.0	13995.0	2287775.0
British Columbia	Both sexes	2010-2011	596.0	13920.0	2333685.0
British Columbia	Both sexes	2011-2012	600.0	14240.0	2373715.0
British Columbia	Both sexes	2012-2013	594.0	14305.0	2409380.0
British Columbia	Both sexes	2013-2014	629.0	15315.0	2435205.0
British Columbia	Both sexes	2014-2015	636.0	15710.0	2468235.0
British Columbia	Both sexes	2015-2016	630.0	15795.0	2506220.0
British Columbia	Both sexes	2016-2017	629.0	16020.0	2547600.0
British Columbia	Both sexes	2017-2018	653.0	16885.0	2584840.0
British Columbia	Both sexes	2018-2019	669.0	17540.0	2623290.0
British Columbia	Both sexes	2019-2020	664.0	17745.0	2670430.0
British Columbia	Both sexes	2020-2021*	655.0	17815.0	2718140.0
British Columbia	Both sexes	2021-2022*	695.0	19360.0	2783970.0
British Columbia	Both sexes	2022-2023*	681.0	19465.0	2858345.0
Yukon Territory	Both sexes	2000-2001	\N	0.0	0.0
Yukon Territory	Both sexes	2001-2002	\N	0.0	0.0
Yukon Territory	Both sexes	2002-2003	\N	0.0	0.0
Yukon Territory	Both sexes	2003-2004	\N	0.0	0.0
Yukon Territory	Both sexes	2004-2005	\N	0.0	0.0
Yukon Territory	Both sexes	2005-2006	\N	0.0	0.0
Yukon Territory	Both sexes	2006-2007	\N	0.0	0.0
Yukon Territory	Both sexes	2007-2008	\N	0.0	0.0
Yukon Territory	Both sexes	2008-2009	\N	0.0	0.0
Yukon Territory	Both sexes	2009-2010	\N	0.0	0.0
Yukon Territory	Both sexes	2010-2011	516.0	90.0	17450.0
Yukon Territory	Both sexes	2011-2012	503.0	90.0	17875.0
Yukon Territory	Both sexes	2012-2013	466.0	85.0	18255.0
Yukon Territory	Both sexes	2013-2014	487.0	90.0	18490.0
Yukon Territory	Both sexes	2014-2015	695.0	130.0	18695.0
Yukon Territory	Both sexes	2015-2016	552.0	105.0	19015.0
Yukon Territory	Both sexes	2016-2017	619.0	120.0	19380.0
Yukon Territory	Both sexes	2017-2018	428.0	85.0	19865.0
Yukon Territory	Both sexes	2018-2019	692.0	140.0	20225.0
Yukon Territory	Both sexes	2019-2020	604.0	125.0	20680.0
Yukon Territory	Both sexes	2020-2021*	645.0	135.0	20925.0
Yukon Territory	Both sexes	2021-2022*	628.0	135.0	21495.0
Yukon Territory	Both sexes	2022-2023*	569.0	125.0	21950.0
Northwest Territories	Both sexes	2000-2001	499.0	70.0	14035.0
Northwest Territories	Both sexes	2001-2002	522.0	75.0	14380.0
Northwest Territories	Both sexes	2002-2003	432.0	65.0	15055.0
Northwest Territories	Both sexes	2003-2004	420.0	65.0	15475.0
Northwest Territories	Both sexes	2004-2005	430.0	70.0	16280.0
Northwest Territories	Both sexes	2005-2006	389.0	65.0	16700.0
Northwest Territories	Both sexes	2006-2007	385.0	65.0	16895.0
Northwest Territories	Both sexes	2007-2008	344.0	60.0	17460.0
Northwest Territories	Both sexes	2008-2009	361.0	65.0	18025.0
Northwest Territories	Both sexes	2009-2010	270.0	50.0	18530.0
Northwest Territories	Both sexes	2010-2011	376.0	65.0	17275.0
Northwest Territories	Both sexes	2011-2012	280.0	50.0	17840.0
Northwest Territories	Both sexes	2012-2013	325.0	60.0	18455.0
Northwest Territories	Both sexes	2013-2014	240.0	45.0	18725.0
Northwest Territories	Both sexes	2014-2015	245.0	45.0	18375.0
Northwest Territories	Both sexes	2015-2016	347.0	65.0	18745.0
Northwest Territories	Both sexes	2016-2017	342.0	65.0	18985.0
Northwest Territories	Both sexes	2017-2018	478.0	90.0	18845.0
Northwest Territories	Both sexes	2018-2019	495.0	95.0	19200.0
Northwest Territories	Both sexes	2019-2020	437.0	85.0	19460.0
Northwest Territories	Both sexes	2020-2021*	360.0	70.0	19445.0
Northwest Territories	Both sexes	2021-2022*	433.0	85.0	19610.0
Northwest Territories	Both sexes	2022-2023*	\N	0.0	0.0
Nunavut	Both sexes	2000-2001	\N	0.0	0.0
Nunavut	Both sexes	2001-2002	\N	0.0	0.0
Nunavut	Both sexes	2002-2003	\N	0.0	0.0
Nunavut	Both sexes	2003-2004	\N	0.0	0.0
Nunavut	Both sexes	2004-2005	\N	0.0	0.0
Nunavut	Both sexes	2005-2006	593.0	45.0	7590.0
Nunavut	Both sexes	2006-2007	628.0	50.0	7965.0
Nunavut	Both sexes	2007-2008	622.0	50.0	8045.0
Nunavut	Both sexes	2008-2009	354.0	30.0	8470.0
Nunavut	Both sexes	2009-2010	444.0	40.0	9010.0
Nunavut	Both sexes	2010-2011	527.0	50.0	9495.0
Nunavut	Both sexes	2011-2012	401.0	40.0	9975.0
Nunavut	Both sexes	2012-2013	486.0	50.0	10285.0
Nunavut	Both sexes	2013-2014	490.0	50.0	10205.0
Nunavut	Both sexes	2014-2015	480.0	50.0	10425.0
Nunavut	Both sexes	2015-2016	560.0	60.0	10715.0
Nunavut	Both sexes	2016-2017	453.0	50.0	11045.0
Nunavut	Both sexes	2017-2018	482.0	55.0	11420.0
Nunavut	Both sexes	2018-2019	512.0	60.0	11730.0
Nunavut	Both sexes	2019-2020	468.0	55.0	11745.0
Nunavut	Both sexes	2020-2021*	381.0	45.0	11815.0
Nunavut	Both sexes	2021-2022*	496.0	60.0	12100.0
Nunavut	Both sexes	2022-2023*	526.0	65.0	12350.0
\.


--
-- TOC entry 4863 (class 0 OID 25152)
-- Dependencies: 216
-- Data for Name: incidence_rates_ischemics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.incidence_rates_ischemics (geography, sex, fiscal_year, rate_per_100k, counts, population) FROM stdin;
Canada	Both sexes	2000-2001	991.0	217465.0	21952330.0
Canada	Both sexes	2001-2002	921.0	204410.0	22186025.0
Canada	Both sexes	2002-2003	865.0	194070.0	22431845.0
Canada	Both sexes	2003-2004	824.0	187100.0	22697185.0
Canada	Both sexes	2004-2005	788.0	180950.0	22964845.0
Canada	Both sexes	2005-2006	757.0	176115.0	23275450.0
Canada	Both sexes	2006-2007	724.0	169700.0	23426825.0
Canada	Both sexes	2007-2008	705.0	166660.0	23629990.0
Canada	Both sexes	2008-2009	688.0	167105.0	24304845.0
Canada	Both sexes	2009-2010	663.0	163420.0	24653950.0
Canada	Both sexes	2010-2011	648.0	162605.0	25083050.0
Canada	Both sexes	2011-2012	632.0	161135.0	25497195.0
Canada	Both sexes	2012-2013	612.0	158710.0	25924105.0
Canada	Both sexes	2013-2014	600.0	157815.0	26319275.0
Canada	Both sexes	2014-2015	590.0	157225.0	26663800.0
Canada	Both sexes	2015-2016	590.0	159230.0	26993150.0
Canada	Both sexes	2016-2017	596.0	163110.0	27368245.0
Canada	Both sexes	2017-2018	589.0	163290.0	27741415.0
Canada	Both sexes	2018-2019	576.0	162255.0	28186955.0
Canada	Both sexes	2019-2020	580.0	166545.0	28704795.0
Canada	Both sexes	2020-2021*	546.0	157395.0	28844270.0
Canada	Both sexes	2021-2022*	573.0	164945.0	28803170.0
Canada	Both sexes	2022-2023*	559.0	165165.0	29524315.0
Newfoundland and Labrador	Both sexes	2000-2001	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2001-2002	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2002-2003	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2003-2004	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2004-2005	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2005-2006	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2006-2007	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2007-2008	\N	0.0	0.0
Newfoundland and Labrador	Both sexes	2008-2009	800.0	3130.0	391430.0
Newfoundland and Labrador	Both sexes	2009-2010	686.0	2715.0	395640.0
Newfoundland and Labrador	Both sexes	2010-2011	625.0	2500.0	399710.0
Newfoundland and Labrador	Both sexes	2011-2012	581.0	2340.0	403005.0
Newfoundland and Labrador	Both sexes	2012-2013	564.0	2285.0	405225.0
Newfoundland and Labrador	Both sexes	2013-2014	576.0	2340.0	406600.0
Newfoundland and Labrador	Both sexes	2014-2015	562.0	2280.0	405860.0
Newfoundland and Labrador	Both sexes	2015-2016	609.0	2465.0	404460.0
Newfoundland and Labrador	Both sexes	2016-2017	643.0	2615.0	406670.0
Newfoundland and Labrador	Both sexes	2017-2018	597.0	2415.0	404295.0
Newfoundland and Labrador	Both sexes	2018-2019	680.0	2745.0	403805.0
Newfoundland and Labrador	Both sexes	2019-2020	634.0	2565.0	404335.0
Newfoundland and Labrador	Both sexes	2020-2021*	572.0	2310.0	404140.0
Newfoundland and Labrador	Both sexes	2021-2022*	598.0	2440.0	407985.0
Newfoundland and Labrador	Both sexes	2022-2023*	532.0	2200.0	413420.0
Prince Edward Island	Both sexes	2000-2001	952.0	950.0	99825.0
Prince Edward Island	Both sexes	2001-2002	918.0	915.0	99725.0
Prince Edward Island	Both sexes	2002-2003	787.0	785.0	99800.0
Prince Edward Island	Both sexes	2003-2004	786.0	795.0	101095.0
Prince Edward Island	Both sexes	2004-2005	771.0	785.0	101810.0
Prince Edward Island	Both sexes	2005-2006	768.0	785.0	102280.0
Prince Edward Island	Both sexes	2006-2007	704.0	725.0	102980.0
Prince Edward Island	Both sexes	2007-2008	710.0	740.0	104205.0
Prince Edward Island	Both sexes	2008-2009	640.0	680.0	106250.0
Prince Edward Island	Both sexes	2009-2010	650.0	700.0	107705.0
Prince Edward Island	Both sexes	2010-2011	691.0	755.0	109280.0
Prince Edward Island	Both sexes	2011-2012	596.0	660.0	110725.0
Prince Edward Island	Both sexes	2012-2013	562.0	630.0	112155.0
Prince Edward Island	Both sexes	2013-2014	562.0	635.0	113055.0
Prince Edward Island	Both sexes	2014-2015	515.0	585.0	113610.0
Prince Edward Island	Both sexes	2015-2016	487.0	555.0	113860.0
Prince Edward Island	Both sexes	2016-2017	481.0	555.0	115280.0
Prince Edward Island	Both sexes	2017-2018	477.0	560.0	117455.0
Prince Edward Island	Both sexes	2018-2019	478.0	575.0	120215.0
Prince Edward Island	Both sexes	2019-2020	446.0	555.0	124310.0
Prince Edward Island	Both sexes	2020-2021*	451.0	570.0	126375.0
Prince Edward Island	Both sexes	2021-2022*	487.0	630.0	129350.0
Prince Edward Island	Both sexes	2022-2023*	453.0	605.0	133445.0
Nova Scotia	Both sexes	2000-2001	953.0	6485.0	680160.0
Nova Scotia	Both sexes	2001-2002	911.0	6215.0	682345.0
Nova Scotia	Both sexes	2002-2003	882.0	6050.0	685645.0
Nova Scotia	Both sexes	2003-2004	861.0	5945.0	690170.0
Nova Scotia	Both sexes	2004-2005	823.0	5720.0	694920.0
Nova Scotia	Both sexes	2005-2006	774.0	5410.0	699225.0
Nova Scotia	Both sexes	2006-2007	718.0	5050.0	703450.0
Nova Scotia	Both sexes	2007-2008	695.0	4910.0	706430.0
Nova Scotia	Both sexes	2008-2009	700.0	4990.0	712410.0
Nova Scotia	Both sexes	2009-2010	648.0	4660.0	718775.0
Nova Scotia	Both sexes	2010-2011	619.0	4500.0	727415.0
Nova Scotia	Both sexes	2011-2012	596.0	4380.0	734490.0
Nova Scotia	Both sexes	2012-2013	572.0	4235.0	740035.0
Nova Scotia	Both sexes	2013-2014	549.0	4100.0	746335.0
Nova Scotia	Both sexes	2014-2015	538.0	4040.0	750905.0
Nova Scotia	Both sexes	2015-2016	568.0	4295.0	756645.0
Nova Scotia	Both sexes	2016-2017	541.0	4140.0	764990.0
Nova Scotia	Both sexes	2017-2018	507.0	3930.0	774660.0
Nova Scotia	Both sexes	2018-2019	477.0	3750.0	786420.0
Nova Scotia	Both sexes	2019-2020	474.0	3800.0	801715.0
Nova Scotia	Both sexes	2020-2021*	454.0	3715.0	818970.0
Nova Scotia	Both sexes	2021-2022*	442.0	3700.0	837765.0
Nova Scotia	Both sexes	2022-2023*	416.0	3580.0	861445.0
New Brunswick	Both sexes	2000-2001	1074.0	5820.0	541720.0
New Brunswick	Both sexes	2001-2002	1089.0	5880.0	539970.0
New Brunswick	Both sexes	2002-2003	1046.0	5645.0	539695.0
New Brunswick	Both sexes	2003-2004	967.0	5225.0	540485.0
New Brunswick	Both sexes	2004-2005	907.0	4910.0	541280.0
New Brunswick	Both sexes	2005-2006	904.0	4905.0	542525.0
New Brunswick	Both sexes	2006-2007	884.0	4795.0	542340.0
New Brunswick	Both sexes	2007-2008	856.0	4655.0	543615.0
New Brunswick	Both sexes	2008-2009	799.0	4370.0	546610.0
New Brunswick	Both sexes	2009-2010	830.0	4515.0	544200.0
New Brunswick	Both sexes	2010-2011	804.0	4410.0	548480.0
New Brunswick	Both sexes	2011-2012	790.0	4375.0	553695.0
New Brunswick	Both sexes	2012-2013	802.0	4450.0	555145.0
New Brunswick	Both sexes	2013-2014	749.0	4160.0	555570.0
New Brunswick	Both sexes	2014-2015	773.0	4305.0	557165.0
New Brunswick	Both sexes	2015-2016	793.0	4450.0	561445.0
New Brunswick	Both sexes	2016-2017	795.0	4505.0	566460.0
New Brunswick	Both sexes	2017-2018	745.0	4260.0	571830.0
New Brunswick	Both sexes	2018-2019	717.0	4145.0	578010.0
New Brunswick	Both sexes	2019-2020	694.0	4060.0	585215.0
New Brunswick	Both sexes	2020-2021*	607.0	3590.0	591610.0
New Brunswick	Both sexes	2021-2022*	\N	0.0	0.0
New Brunswick	Both sexes	2022-2023*	\N	0.0	0.0
Quebec	Both sexes	2000-2001	1108.0	58940.0	5319265.0
Quebec	Both sexes	2001-2002	1014.0	54140.0	5337015.0
Quebec	Both sexes	2002-2003	949.0	50865.0	5357080.0
Quebec	Both sexes	2003-2004	942.0	50755.0	5387250.0
Quebec	Both sexes	2004-2005	870.0	47165.0	5419235.0
Quebec	Both sexes	2005-2006	843.0	45935.0	5450460.0
Quebec	Both sexes	2006-2007	797.0	43705.0	5483615.0
Quebec	Both sexes	2007-2008	779.0	42940.0	5512360.0
Quebec	Both sexes	2008-2009	743.0	41215.0	5548185.0
Quebec	Both sexes	2009-2010	708.0	39680.0	5601150.0
Quebec	Both sexes	2010-2011	703.0	39790.0	5662970.0
Quebec	Both sexes	2011-2012	704.0	40280.0	5722005.0
Quebec	Both sexes	2012-2013	690.0	39860.0	5779655.0
Quebec	Both sexes	2013-2014	663.0	38675.0	5830870.0
Quebec	Both sexes	2014-2015	656.0	38580.0	5877705.0
Quebec	Both sexes	2015-2016	637.0	37665.0	5916245.0
Quebec	Both sexes	2016-2017	680.0	40550.0	5959100.0
Quebec	Both sexes	2017-2018	663.0	39755.0	6000055.0
Quebec	Both sexes	2018-2019	621.0	37545.0	6042805.0
Quebec	Both sexes	2019-2020	628.0	38330.0	6102505.0
Quebec	Both sexes	2020-2021*	615.0	37745.0	6135625.0
Quebec	Both sexes	2021-2022*	655.0	40565.0	6195870.0
Quebec	Both sexes	2022-2023*	630.0	39565.0	6277540.0
Ontario	Both sexes	2000-2001	1021.0	88625.0	8680510.0
Ontario	Both sexes	2001-2002	960.0	84580.0	8814460.0
Ontario	Both sexes	2002-2003	899.0	80595.0	8960740.0
Ontario	Both sexes	2003-2004	820.0	74630.0	9100190.0
Ontario	Both sexes	2004-2005	788.0	72845.0	9241430.0
Ontario	Both sexes	2005-2006	754.0	70815.0	9387190.0
Ontario	Both sexes	2006-2007	737.0	69150.0	9380650.0
Ontario	Both sexes	2007-2008	700.0	65765.0	9393180.0
Ontario	Both sexes	2008-2009	696.0	65875.0	9466740.0
Ontario	Both sexes	2009-2010	674.0	64820.0	9619165.0
Ontario	Both sexes	2010-2011	650.0	63560.0	9781495.0
Ontario	Both sexes	2011-2012	626.0	62240.0	9948635.0
Ontario	Both sexes	2012-2013	589.0	59540.0	10115255.0
Ontario	Both sexes	2013-2014	570.0	58565.0	10266855.0
Ontario	Both sexes	2014-2015	555.0	57545.0	10371260.0
Ontario	Both sexes	2015-2016	555.0	58360.0	10511760.0
Ontario	Both sexes	2016-2017	549.0	58700.0	10685630.0
Ontario	Both sexes	2017-2018	549.0	59600.0	10853880.0
Ontario	Both sexes	2018-2019	529.0	58530.0	11065845.0
Ontario	Both sexes	2019-2020	527.0	59740.0	11333800.0
Ontario	Both sexes	2020-2021*	475.0	53720.0	11298030.0
Ontario	Both sexes	2021-2022*	495.0	57150.0	11550905.0
Ontario	Both sexes	2022-2023*	490.0	58140.0	11866635.0
Manitoba	Both sexes	2000-2001	902.0	7360.0	815660.0
Manitoba	Both sexes	2001-2002	793.0	6475.0	816690.0
Manitoba	Both sexes	2002-2003	755.0	6185.0	818820.0
Manitoba	Both sexes	2003-2004	748.0	6165.0	824740.0
Manitoba	Both sexes	2004-2005	691.0	5740.0	830315.0
Manitoba	Both sexes	2005-2006	632.0	5280.0	835375.0
Manitoba	Both sexes	2006-2007	604.0	5080.0	840730.0
Manitoba	Both sexes	2007-2008	588.0	4985.0	848105.0
Manitoba	Both sexes	2008-2009	589.0	5060.0	858700.0
Manitoba	Both sexes	2009-2010	593.0	5165.0	870375.0
Manitoba	Both sexes	2010-2011	588.0	5210.0	885580.0
Manitoba	Both sexes	2011-2012	532.0	4800.0	902055.0
Manitoba	Both sexes	2012-2013	573.0	5275.0	920755.0
Manitoba	Both sexes	2013-2014	604.0	5660.0	936640.0
Manitoba	Both sexes	2014-2015	554.0	5270.0	951430.0
Manitoba	Both sexes	2015-2016	539.0	5195.0	963720.0
Manitoba	Both sexes	2016-2017	477.0	4665.0	978240.0
Manitoba	Both sexes	2017-2018	450.0	4460.0	991460.0
Manitoba	Both sexes	2018-2019	431.0	4315.0	1000285.0
Manitoba	Both sexes	2019-2020	437.0	4380.0	1002115.0
Manitoba	Both sexes	2020-2021*	433.0	4370.0	1010185.0
Manitoba	Both sexes	2021-2022*	459.0	4715.0	1026130.0
Manitoba	Both sexes	2022-2023*	441.0	4670.0	1059055.0
Saskatchewan	Both sexes	2000-2001	1052.0	7425.0	705565.0
Saskatchewan	Both sexes	2001-2002	990.0	6985.0	705635.0
Saskatchewan	Both sexes	2002-2003	942.0	6660.0	707265.0
Saskatchewan	Both sexes	2003-2004	898.0	6285.0	699655.0
Saskatchewan	Both sexes	2004-2005	843.0	5950.0	705505.0
Saskatchewan	Both sexes	2005-2006	842.0	5975.0	710025.0
Saskatchewan	Both sexes	2006-2007	820.0	5775.0	704100.0
Saskatchewan	Both sexes	2007-2008	778.0	5590.0	718590.0
Saskatchewan	Both sexes	2008-2009	737.0	5415.0	734915.0
Saskatchewan	Both sexes	2009-2010	678.0	5015.0	739715.0
Saskatchewan	Both sexes	2010-2011	667.0	5045.0	756240.0
Saskatchewan	Both sexes	2011-2012	631.0	4890.0	775105.0
Saskatchewan	Both sexes	2012-2013	601.0	4725.0	785885.0
Saskatchewan	Both sexes	2013-2014	595.0	4780.0	803365.0
Saskatchewan	Both sexes	2014-2015	538.0	4435.0	823795.0
Saskatchewan	Both sexes	2015-2016	557.0	4585.0	823415.0
Saskatchewan	Both sexes	2016-2017	542.0	4545.0	838870.0
Saskatchewan	Both sexes	2017-2018	534.0	4550.0	852440.0
Saskatchewan	Both sexes	2018-2019	479.0	4160.0	869005.0
Saskatchewan	Both sexes	2019-2020	469.0	4065.0	867460.0
Saskatchewan	Both sexes	2020-2021*	424.0	3720.0	876395.0
Saskatchewan	Both sexes	2021-2022*	441.0	3920.0	888860.0
Saskatchewan	Both sexes	2022-2023*	450.0	4035.0	896335.0
Alberta	Both sexes	2000-2001	808.0	17220.0	2132235.0
Alberta	Both sexes	2001-2002	755.0	16450.0	2178060.0
Alberta	Both sexes	2002-2003	685.0	15230.0	2222400.0
Alberta	Both sexes	2003-2004	675.0	15270.0	2262045.0
Alberta	Both sexes	2004-2005	682.0	15655.0	2294860.0
Alberta	Both sexes	2005-2006	670.0	15710.0	2346125.0
Alberta	Both sexes	2006-2007	638.0	15505.0	2428655.0
Alberta	Both sexes	2007-2008	619.0	15505.0	2504615.0
Alberta	Both sexes	2008-2009	604.0	15600.0	2580720.0
Alberta	Both sexes	2009-2010	611.0	16175.0	2647645.0
Alberta	Both sexes	2010-2011	589.0	16050.0	2724075.0
Alberta	Both sexes	2011-2012	564.0	15870.0	2812505.0
Alberta	Both sexes	2012-2013	551.0	16185.0	2935050.0
Alberta	Both sexes	2013-2014	548.0	16775.0	3060010.0
Alberta	Both sexes	2014-2015	556.0	17640.0	3170470.0
Alberta	Both sexes	2015-2016	570.0	18490.0	3243785.0
Alberta	Both sexes	2016-2017	565.0	18585.0	3289470.0
Alberta	Both sexes	2017-2018	573.0	19125.0	3336445.0
Alberta	Both sexes	2018-2019	580.0	19705.0	3400290.0
Alberta	Both sexes	2019-2020	600.0	20810.0	3467100.0
Alberta	Both sexes	2020-2021*	543.0	19015.0	3503820.0
Alberta	Both sexes	2021-2022*	616.0	21995.0	3569720.0
Alberta	Both sexes	2022-2023*	600.0	22240.0	3704605.0
British Columbia	Both sexes	2000-2001	830.0	24475.0	2948345.0
British Columbia	Both sexes	2001-2002	759.0	22630.0	2983030.0
British Columbia	Both sexes	2002-2003	727.0	21895.0	3010595.0
British Columbia	Both sexes	2003-2004	715.0	21890.0	3061645.0
British Columbia	Both sexes	2004-2005	710.0	22040.0	3104560.0
British Columbia	Both sexes	2005-2006	670.0	21135.0	3153130.0
British Columbia	Both sexes	2006-2007	618.0	19725.0	3190595.0
British Columbia	Both sexes	2007-2008	658.0	21375.0	3248410.0
British Columbia	Both sexes	2008-2009	622.0	20580.0	3306850.0
British Columbia	Both sexes	2009-2010	589.0	19765.0	3355970.0
British Columbia	Both sexes	2010-2011	601.0	20480.0	3408595.0
British Columbia	Both sexes	2011-2012	608.0	20990.0	3453040.0
British Columbia	Both sexes	2012-2013	608.0	21230.0	3490705.0
British Columbia	Both sexes	2013-2014	620.0	21790.0	3514865.0
British Columbia	Both sexes	2014-2015	624.0	22210.0	3556675.0
British Columbia	Both sexes	2015-2016	633.0	22845.0	3611340.0
British Columbia	Both sexes	2016-2017	650.0	23895.0	3675450.0
British Columbia	Both sexes	2017-2018	648.0	24315.0	3749980.0
British Columbia	Both sexes	2018-2019	691.0	26450.0	3830175.0
British Columbia	Both sexes	2019-2020	711.0	27895.0	3925230.0
British Columbia	Both sexes	2020-2021*	711.0	28340.0	3988055.0
British Columbia	Both sexes	2021-2022*	719.0	29520.0	4104155.0
British Columbia	Both sexes	2022-2023*	704.0	29935.0	4251260.0
Yukon Territory	Both sexes	2000-2001	\N	0.0	0.0
Yukon Territory	Both sexes	2001-2002	\N	0.0	0.0
Yukon Territory	Both sexes	2002-2003	\N	0.0	0.0
Yukon Territory	Both sexes	2003-2004	\N	0.0	0.0
Yukon Territory	Both sexes	2004-2005	\N	0.0	0.0
Yukon Territory	Both sexes	2005-2006	\N	0.0	0.0
Yukon Territory	Both sexes	2006-2007	\N	0.0	0.0
Yukon Territory	Both sexes	2007-2008	\N	0.0	0.0
Yukon Territory	Both sexes	2008-2009	\N	0.0	0.0
Yukon Territory	Both sexes	2009-2010	\N	0.0	0.0
Yukon Territory	Both sexes	2010-2011	357.0	100.0	27985.0
Yukon Territory	Both sexes	2011-2012	400.0	115.0	28760.0
Yukon Territory	Both sexes	2012-2013	338.0	100.0	29575.0
Yukon Territory	Both sexes	2013-2014	450.0	135.0	30000.0
Yukon Territory	Both sexes	2014-2015	445.0	135.0	30320.0
Yukon Territory	Both sexes	2015-2016	422.0	130.0	30780.0
Yukon Territory	Both sexes	2016-2017	445.0	140.0	31485.0
Yukon Territory	Both sexes	2017-2018	325.0	105.0	32270.0
Yukon Territory	Both sexes	2018-2019	397.0	130.0	32770.0
Yukon Territory	Both sexes	2019-2020	462.0	155.0	33565.0
Yukon Territory	Both sexes	2020-2021*	367.0	125.0	34040.0
Yukon Territory	Both sexes	2021-2022*	301.0	105.0	34835.0
Yukon Territory	Both sexes	2022-2023*	351.0	125.0	35585.0
Northwest Territories	Both sexes	2000-2001	534.0	155.0	29045.0
Northwest Territories	Both sexes	2001-2002	481.0	140.0	29090.0
Northwest Territories	Both sexes	2002-2003	520.0	155.0	29800.0
Northwest Territories	Both sexes	2003-2004	418.0	125.0	29890.0
Northwest Territories	Both sexes	2004-2005	452.0	140.0	30945.0
Northwest Territories	Both sexes	2005-2006	333.0	105.0	31525.0
Northwest Territories	Both sexes	2006-2007	411.0	130.0	31650.0
Northwest Territories	Both sexes	2007-2008	415.0	135.0	32520.0
Northwest Territories	Both sexes	2008-2009	391.0	130.0	33250.0
Northwest Territories	Both sexes	2009-2010	412.0	140.0	33960.0
Northwest Territories	Both sexes	2010-2011	505.0	155.0	30695.0
Northwest Territories	Both sexes	2011-2012	424.0	135.0	31820.0
Northwest Territories	Both sexes	2012-2013	426.0	140.0	32850.0
Northwest Territories	Both sexes	2013-2014	300.0	100.0	33285.0
Northwest Territories	Both sexes	2014-2015	401.0	130.0	32405.0
Northwest Territories	Both sexes	2015-2016	424.0	140.0	32985.0
Northwest Territories	Both sexes	2016-2017	437.0	145.0	33210.0
Northwest Territories	Both sexes	2017-2018	429.0	140.0	32650.0
Northwest Territories	Both sexes	2018-2019	440.0	145.0	32950.0
Northwest Territories	Both sexes	2019-2020	392.0	130.0	33145.0
Northwest Territories	Both sexes	2020-2021*	352.0	115.0	32675.0
Northwest Territories	Both sexes	2021-2022*	380.0	125.0	32890.0
Northwest Territories	Both sexes	2022-2023*	\N	0.0	0.0
Nunavut	Both sexes	2000-2001	\N	0.0	0.0
Nunavut	Both sexes	2001-2002	\N	0.0	0.0
Nunavut	Both sexes	2002-2003	\N	0.0	0.0
Nunavut	Both sexes	2003-2004	\N	0.0	0.0
Nunavut	Both sexes	2004-2005	\N	0.0	0.0
Nunavut	Both sexes	2005-2006	369.0	65.0	17595.0
Nunavut	Both sexes	2006-2007	277.0	50.0	18055.0
Nunavut	Both sexes	2007-2008	334.0	60.0	17960.0
Nunavut	Both sexes	2008-2009	319.0	60.0	18780.0
Nunavut	Both sexes	2009-2010	356.0	70.0	19645.0
Nunavut	Both sexes	2010-2011	243.0	50.0	20545.0
Nunavut	Both sexes	2011-2012	304.0	65.0	21365.0
Nunavut	Both sexes	2012-2013	275.0	60.0	21830.0
Nunavut	Both sexes	2013-2014	526.0	115.0	21850.0
Nunavut	Both sexes	2014-2015	293.0	65.0	22200.0
Nunavut	Both sexes	2015-2016	286.0	65.0	22710.0
Nunavut	Both sexes	2016-2017	257.0	60.0	23375.0
Nunavut	Both sexes	2017-2018	292.0	70.0	23995.0
Nunavut	Both sexes	2018-2019	266.0	65.0	24395.0
Nunavut	Both sexes	2019-2020	288.0	70.0	24305.0
Nunavut	Both sexes	2020-2021*	205.0	50.0	24335.0
Nunavut	Both sexes	2021-2022*	324.0	80.0	24705.0
Nunavut	Both sexes	2022-2023*	280.0	70.0	24980.0
\.


--
-- TOC entry 4867 (class 0 OID 25180)
-- Dependencies: 220
-- Data for Name: mortality_rate_myocardial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mortality_rate_myocardial (geography, sex, fiscal_year, rate_per_100k, population) FROM stdin;
Canada	Both sexes	2000-2001	4520.0	246300.0
Canada	Both sexes	2001-2002	4422.0	282785.0
Canada	Both sexes	2002-2003	4078.0	317205.0
Canada	Both sexes	2003-2004	3897.0	350170.0
Canada	Both sexes	2004-2005	3653.0	379450.0
Canada	Both sexes	2005-2006	3344.0	406140.0
Canada	Both sexes	2006-2007	3112.0	430720.0
Canada	Both sexes	2007-2008	3168.0	455200.0
Canada	Both sexes	2008-2009	3169.0	489215.0
Canada	Both sexes	2009-2010	2949.0	511055.0
Canada	Both sexes	2010-2011	3126.0	534300.0
Canada	Both sexes	2011-2012	2582.0	555825.0
Canada	Both sexes	2012-2013	2988.0	578985.0
Canada	Both sexes	2013-2014	2553.0	599325.0
Canada	Both sexes	2014-2015	2948.0	619800.0
Canada	Both sexes	2015-2016	2770.0	638010.0
Canada	Both sexes	2016-2017	2810.0	659380.0
Canada	Both sexes	2017-2018	3205.0	679025.0
Canada	Both sexes	2018-2019	2856.0	697245.0
Canada	Both sexes	2019-2020	2607.0	713335.0
Canada	Both sexes	2020-2021*	3291.0	725910.0
Canada	Both sexes	2021-2022*	3011.0	718175.0
Canada	Both sexes	2022-2023*	2984.0	729090.0
Newfoundland and Labrador	Both sexes	2000-2001	\N	\N
Newfoundland and Labrador	Both sexes	2001-2002	\N	\N
Newfoundland and Labrador	Both sexes	2002-2003	\N	\N
Newfoundland and Labrador	Both sexes	2003-2004	\N	\N
Newfoundland and Labrador	Both sexes	2004-2005	\N	\N
Newfoundland and Labrador	Both sexes	2005-2006	\N	\N
Newfoundland and Labrador	Both sexes	2006-2007	\N	\N
Newfoundland and Labrador	Both sexes	2007-2008	\N	\N
Newfoundland and Labrador	Both sexes	2008-2009	\N	\N
Newfoundland and Labrador	Both sexes	2009-2010	3642.0	11125.0
Newfoundland and Labrador	Both sexes	2010-2011	2509.0	11650.0
Newfoundland and Labrador	Both sexes	2011-2012	2395.0	12025.0
Newfoundland and Labrador	Both sexes	2012-2013	2282.0	12470.0
Newfoundland and Labrador	Both sexes	2013-2014	2596.0	12845.0
Newfoundland and Labrador	Both sexes	2014-2015	2613.0	13155.0
Newfoundland and Labrador	Both sexes	2015-2016	2859.0	13580.0
Newfoundland and Labrador	Both sexes	2016-2017	2317.0	14065.0
Newfoundland and Labrador	Both sexes	2017-2018	3674.0	14465.0
Newfoundland and Labrador	Both sexes	2018-2019	2192.0	14855.0
Newfoundland and Labrador	Both sexes	2019-2020	2129.0	15110.0
Newfoundland and Labrador	Both sexes	2020-2021*	2374.0	15405.0
Newfoundland and Labrador	Both sexes	2021-2022*	2117.0	15745.0
Newfoundland and Labrador	Both sexes	2022-2023*	2305.0	15975.0
Prince Edward Island	Both sexes	2000-2001	\N	\N
Prince Edward Island	Both sexes	2001-2002	3463.0	1530.0
Prince Edward Island	Both sexes	2002-2003	2910.0	1665.0
Prince Edward Island	Both sexes	2003-2004	2802.0	1825.0
Prince Edward Island	Both sexes	2004-2005	2832.0	1965.0
Prince Edward Island	Both sexes	2005-2006	2641.0	2095.0
Prince Edward Island	Both sexes	2006-2007	2791.0	2200.0
Prince Edward Island	Both sexes	2007-2008	2374.0	2380.0
Prince Edward Island	Both sexes	2008-2009	2346.0	2560.0
Prince Edward Island	Both sexes	2009-2010	2075.0	2730.0
Prince Edward Island	Both sexes	2010-2011	2226.0	2920.0
Prince Edward Island	Both sexes	2011-2012	1995.0	3070.0
Prince Edward Island	Both sexes	2012-2013	1663.0	3170.0
Prince Edward Island	Both sexes	2013-2014	2031.0	3255.0
Prince Edward Island	Both sexes	2014-2015	1783.0	3330.0
Prince Edward Island	Both sexes	2015-2016	1429.0	3400.0
Prince Edward Island	Both sexes	2016-2017	1939.0	3535.0
Prince Edward Island	Both sexes	2017-2018	1812.0	3640.0
Prince Edward Island	Both sexes	2018-2019	2028.0	3735.0
Prince Edward Island	Both sexes	2019-2020	2035.0	3765.0
Prince Edward Island	Both sexes	2020-2021*	1502.0	3815.0
Prince Edward Island	Both sexes	2021-2022*	2122.0	3945.0
Prince Edward Island	Both sexes	2022-2023*	1530.0	4020.0
Nova Scotia	Both sexes	2000-2001	3587.0	9250.0
Nova Scotia	Both sexes	2001-2002	3862.0	10580.0
Nova Scotia	Both sexes	2002-2003	3088.0	11890.0
Nova Scotia	Both sexes	2003-2004	4214.0	13320.0
Nova Scotia	Both sexes	2004-2005	3626.0	14410.0
Nova Scotia	Both sexes	2005-2006	2949.0	15375.0
Nova Scotia	Both sexes	2006-2007	2870.0	16335.0
Nova Scotia	Both sexes	2007-2008	2660.0	17415.0
Nova Scotia	Both sexes	2008-2009	2782.0	18400.0
Nova Scotia	Both sexes	2009-2010	2752.0	19370.0
Nova Scotia	Both sexes	2010-2011	2685.0	20330.0
Nova Scotia	Both sexes	2011-2012	2451.0	21165.0
Nova Scotia	Both sexes	2012-2013	2458.0	22155.0
Nova Scotia	Both sexes	2013-2014	2190.0	22850.0
Nova Scotia	Both sexes	2014-2015	2221.0	23520.0
Nova Scotia	Both sexes	2015-2016	2332.0	24175.0
Nova Scotia	Both sexes	2016-2017	2206.0	24880.0
Nova Scotia	Both sexes	2017-2018	2460.0	25510.0
Nova Scotia	Both sexes	2018-2019	2234.0	26070.0
Nova Scotia	Both sexes	2019-2020	2097.0	26690.0
Nova Scotia	Both sexes	2020-2021*	2443.0	27345.0
Nova Scotia	Both sexes	2021-2022*	2161.0	27990.0
Nova Scotia	Both sexes	2022-2023*	2399.0	28380.0
New Brunswick	Both sexes	2000-2001	\N	\N
New Brunswick	Both sexes	2001-2002	3545.0	9210.0
New Brunswick	Both sexes	2002-2003	3306.0	10140.0
New Brunswick	Both sexes	2003-2004	2960.0	10875.0
New Brunswick	Both sexes	2004-2005	3047.0	11545.0
New Brunswick	Both sexes	2005-2006	2528.0	12270.0
New Brunswick	Both sexes	2006-2007	4073.0	12975.0
New Brunswick	Both sexes	2007-2008	2411.0	13840.0
New Brunswick	Both sexes	2008-2009	2646.0	14670.0
New Brunswick	Both sexes	2009-2010	2628.0	15235.0
New Brunswick	Both sexes	2010-2011	2182.0	16005.0
New Brunswick	Both sexes	2011-2012	2864.0	16700.0
New Brunswick	Both sexes	2012-2013	3063.0	17390.0
New Brunswick	Both sexes	2013-2014	\N	\N
New Brunswick	Both sexes	2014-2015	2481.0	18695.0
New Brunswick	Both sexes	2015-2016	2314.0	19315.0
New Brunswick	Both sexes	2016-2017	2017.0	20080.0
New Brunswick	Both sexes	2017-2018	2284.0	20695.0
New Brunswick	Both sexes	2018-2019	2222.0	21190.0
New Brunswick	Both sexes	2019-2020	1993.0	21665.0
New Brunswick	Both sexes	2020-2021*	2055.0	22075.0
New Brunswick	Both sexes	2021-2022*	\N	\N
New Brunswick	Both sexes	2022-2023*	\N	\N
Quebec	Both sexes	2000-2001	4909.0	62050.0
Quebec	Both sexes	2001-2002	5018.0	71400.0
Quebec	Both sexes	2002-2003	4409.0	80205.0
Quebec	Both sexes	2003-2004	4204.0	89465.0
Quebec	Both sexes	2004-2005	3872.0	97100.0
Quebec	Both sexes	2005-2006	2990.0	104665.0
Quebec	Both sexes	2006-2007	2901.0	111530.0
Quebec	Both sexes	2007-2008	2957.0	118255.0
Quebec	Both sexes	2008-2009	3864.0	124405.0
Quebec	Both sexes	2009-2010	2586.0	130055.0
Quebec	Both sexes	2010-2011	2780.0	135685.0
Quebec	Both sexes	2011-2012	2396.0	141720.0
Quebec	Both sexes	2012-2013	3913.0	148625.0
Quebec	Both sexes	2013-2014	2378.0	154750.0
Quebec	Both sexes	2014-2015	3548.0	161395.0
Quebec	Both sexes	2015-2016	2897.0	167110.0
Quebec	Both sexes	2016-2017	2936.0	174185.0
Quebec	Both sexes	2017-2018	3648.0	181610.0
Quebec	Both sexes	2018-2019	3348.0	188065.0
Quebec	Both sexes	2019-2020	2735.0	192335.0
Quebec	Both sexes	2020-2021*	4342.0	196510.0
Quebec	Both sexes	2021-2022*	3542.0	202065.0
Quebec	Both sexes	2022-2023*	3498.0	207570.0
Ontario	Both sexes	2000-2001	4382.0	104400.0
Ontario	Both sexes	2001-2002	4414.0	119840.0
Ontario	Both sexes	2002-2003	3966.0	134190.0
Ontario	Both sexes	2003-2004	4050.0	146770.0
Ontario	Both sexes	2004-2005	3455.0	157650.0
Ontario	Both sexes	2005-2006	3390.0	167300.0
Ontario	Both sexes	2006-2007	3306.0	176060.0
Ontario	Both sexes	2007-2008	3666.0	184470.0
Ontario	Both sexes	2008-2009	3071.0	192640.0
Ontario	Both sexes	2009-2010	3226.0	199975.0
Ontario	Both sexes	2010-2011	3646.0	208130.0
Ontario	Both sexes	2011-2012	2679.0	214940.0
Ontario	Both sexes	2012-2013	2882.0	222200.0
Ontario	Both sexes	2013-2014	2851.0	228760.0
Ontario	Both sexes	2014-2015	3245.0	235070.0
Ontario	Both sexes	2015-2016	2782.0	240485.0
Ontario	Both sexes	2016-2017	3099.0	246980.0
Ontario	Both sexes	2017-2018	3234.0	252040.0
Ontario	Both sexes	2018-2019	3506.0	256835.0
Ontario	Both sexes	2019-2020	2615.0	261725.0
Ontario	Both sexes	2020-2021*	2524.0	263840.0
Ontario	Both sexes	2021-2022*	2773.0	267320.0
Ontario	Both sexes	2022-2023*	2861.0	269445.0
Manitoba	Both sexes	2000-2001	3339.0	8220.0
Manitoba	Both sexes	2001-2002	3047.0	9145.0
Manitoba	Both sexes	2002-2003	2876.0	10195.0
Manitoba	Both sexes	2003-2004	2917.0	11190.0
Manitoba	Both sexes	2004-2005	5807.0	12885.0
Manitoba	Both sexes	2005-2006	2979.0	13930.0
Manitoba	Both sexes	2006-2007	2850.0	15195.0
Manitoba	Both sexes	2007-2008	3501.0	16295.0
Manitoba	Both sexes	2008-2009	2884.0	17495.0
Manitoba	Both sexes	2009-2010	2518.0	18590.0
Manitoba	Both sexes	2010-2011	2724.0	19575.0
Manitoba	Both sexes	2011-2012	3048.0	20335.0
Manitoba	Both sexes	2012-2013	2549.0	21050.0
Manitoba	Both sexes	2013-2014	2300.0	21605.0
Manitoba	Both sexes	2014-2015	2627.0	22205.0
Manitoba	Both sexes	2015-2016	2257.0	22695.0
Manitoba	Both sexes	2016-2017	2891.0	23240.0
Manitoba	Both sexes	2017-2018	2513.0	23850.0
Manitoba	Both sexes	2018-2019	2159.0	24285.0
Manitoba	Both sexes	2019-2020	2928.0	24875.0
Manitoba	Both sexes	2020-2021*	2465.0	25205.0
Manitoba	Both sexes	2021-2022*	2764.0	25540.0
Manitoba	Both sexes	2022-2023*	2737.0	25685.0
Saskatchewan	Both sexes	2000-2001	4051.0	9270.0
Saskatchewan	Both sexes	2001-2002	4309.0	10345.0
Saskatchewan	Both sexes	2002-2003	4614.0	11260.0
Saskatchewan	Both sexes	2003-2004	2879.0	12065.0
Saskatchewan	Both sexes	2004-2005	4672.0	13140.0
Saskatchewan	Both sexes	2005-2006	2684.0	13995.0
Saskatchewan	Both sexes	2006-2007	2568.0	14715.0
Saskatchewan	Both sexes	2007-2008	3017.0	15410.0
Saskatchewan	Both sexes	2008-2009	3095.0	16140.0
Saskatchewan	Both sexes	2009-2010	3127.0	16670.0
Saskatchewan	Both sexes	2010-2011	\N	\N
Saskatchewan	Both sexes	2011-2012	3802.0	17640.0
Saskatchewan	Both sexes	2012-2013	2998.0	18115.0
Saskatchewan	Both sexes	2013-2014	2422.0	18400.0
Saskatchewan	Both sexes	2014-2015	2249.0	18675.0
Saskatchewan	Both sexes	2015-2016	2502.0	18990.0
Saskatchewan	Both sexes	2016-2017	2386.0	19305.0
Saskatchewan	Both sexes	2017-2018	3686.0	19585.0
Saskatchewan	Both sexes	2018-2019	2118.0	19985.0
Saskatchewan	Both sexes	2019-2020	2843.0	20200.0
Saskatchewan	Both sexes	2020-2021*	3757.0	20530.0
Saskatchewan	Both sexes	2021-2022*	3218.0	20695.0
Saskatchewan	Both sexes	2022-2023*	5353.0	20580.0
Alberta	Both sexes	2000-2001	4215.0	15845.0
Alberta	Both sexes	2001-2002	3986.0	19150.0
Alberta	Both sexes	2002-2003	4081.0	22520.0
Alberta	Both sexes	2003-2004	3685.0	25850.0
Alberta	Both sexes	2004-2005	2851.0	28850.0
Alberta	Both sexes	2005-2006	4145.0	31825.0
Alberta	Both sexes	2006-2007	2958.0	34600.0
Alberta	Both sexes	2007-2008	3222.0	37130.0
Alberta	Both sexes	2008-2009	2823.0	39475.0
Alberta	Both sexes	2009-2010	3456.0	41735.0
Alberta	Both sexes	2010-2011	2617.0	44080.0
Alberta	Both sexes	2011-2012	2952.0	46615.0
Alberta	Both sexes	2012-2013	3306.0	49210.0
Alberta	Both sexes	2013-2014	2239.0	51495.0
Alberta	Both sexes	2014-2015	2632.0	53630.0
Alberta	Both sexes	2015-2016	3815.0	55675.0
Alberta	Both sexes	2016-2017	2611.0	57815.0
Alberta	Both sexes	2017-2018	3020.0	59950.0
Alberta	Both sexes	2018-2019	2519.0	62035.0
Alberta	Both sexes	2019-2020	2256.0	64205.0
Alberta	Both sexes	2020-2021*	2711.0	65970.0
Alberta	Both sexes	2021-2022*	2452.0	67335.0
Alberta	Both sexes	2022-2023*	2463.0	68230.0
British Columbia	Both sexes	2000-2001	4150.0	27545.0
British Columbia	Both sexes	2001-2002	4391.0	31435.0
British Columbia	Both sexes	2002-2003	3713.0	34950.0
British Columbia	Both sexes	2003-2004	3762.0	38600.0
British Columbia	Both sexes	2004-2005	4321.0	41705.0
British Columbia	Both sexes	2005-2006	3895.0	44410.0
British Columbia	Both sexes	2006-2007	3586.0	46795.0
British Columbia	Both sexes	2007-2008	2793.0	49665.0
British Columbia	Both sexes	2008-2009	2803.0	52500.0
British Columbia	Both sexes	2009-2010	2571.0	55150.0
British Columbia	Both sexes	2010-2011	3799.0	58010.0
British Columbia	Both sexes	2011-2012	2195.0	60885.0
British Columbia	Both sexes	2012-2013	2863.0	63800.0
British Columbia	Both sexes	2013-2014	2487.0	66470.0
British Columbia	Both sexes	2014-2015	2426.0	69190.0
British Columbia	Both sexes	2015-2016	2269.0	71550.0
British Columbia	Both sexes	2016-2017	2987.0	74165.0
British Columbia	Both sexes	2017-2018	2680.0	76480.0
British Columbia	Both sexes	2018-2019	1948.0	78910.0
British Columbia	Both sexes	2019-2020	\N	\N
British Columbia	Both sexes	2020-2021*	2846.0	83830.0
British Columbia	Both sexes	2021-2022*	2529.0	86085.0
British Columbia	Both sexes	2022-2023*	2566.0	87720.0
Yukon Territory	Both sexes	2000-2001	\N	\N
Yukon Territory	Both sexes	2001-2002	\N	\N
Yukon Territory	Both sexes	2002-2003	\N	\N
Yukon Territory	Both sexes	2003-2004	\N	\N
Yukon Territory	Both sexes	2004-2005	\N	\N
Yukon Territory	Both sexes	2005-2006	\N	\N
Yukon Territory	Both sexes	2006-2007	\N	\N
Yukon Territory	Both sexes	2007-2008	\N	\N
Yukon Territory	Both sexes	2008-2009	\N	\N
Yukon Territory	Both sexes	2009-2010	\N	\N
Yukon Territory	Both sexes	2010-2011	4108.0	230.0
Yukon Territory	Both sexes	2011-2012	\N	\N
Yukon Territory	Both sexes	2012-2013	2473.0	305.0
Yukon Territory	Both sexes	2013-2014	2042.0	350.0
Yukon Territory	Both sexes	2014-2015	2211.0	390.0
Yukon Territory	Both sexes	2015-2016	1625.0	415.0
Yukon Territory	Both sexes	2016-2017	1708.0	470.0
Yukon Territory	Both sexes	2017-2018	2485.0	500.0
Yukon Territory	Both sexes	2018-2019	1925.0	530.0
Yukon Territory	Both sexes	2019-2020	1418.0	585.0
Yukon Territory	Both sexes	2020-2021*	1272.0	615.0
Yukon Territory	Both sexes	2021-2022*	1551.0	650.0
Yukon Territory	Both sexes	2022-2023*	1004.0	675.0
Northwest Territories	Both sexes	2000-2001	\N	\N
Northwest Territories	Both sexes	2001-2002	\N	\N
Northwest Territories	Both sexes	2002-2003	\N	\N
Northwest Territories	Both sexes	2003-2004	3161.0	195.0
Northwest Territories	Both sexes	2004-2005	2719.0	220.0
Northwest Territories	Both sexes	2005-2006	2485.0	225.0
Northwest Territories	Both sexes	2006-2007	\N	\N
Northwest Territories	Both sexes	2007-2008	3310.0	260.0
Northwest Territories	Both sexes	2008-2009	2528.0	280.0
Northwest Territories	Both sexes	2009-2010	1422.0	305.0
Northwest Territories	Both sexes	2010-2011	2024.0	320.0
Northwest Territories	Both sexes	2011-2012	2330.0	345.0
Northwest Territories	Both sexes	2012-2013	2527.0	370.0
Northwest Territories	Both sexes	2013-2014	1511.0	370.0
Northwest Territories	Both sexes	2014-2015	2005.0	400.0
Northwest Territories	Both sexes	2015-2016	\N	\N
Northwest Territories	Both sexes	2016-2017	3396.0	485.0
Northwest Territories	Both sexes	2017-2018	2182.0	490.0
Northwest Territories	Both sexes	2018-2019	2469.0	515.0
Northwest Territories	Both sexes	2019-2020	1800.0	530.0
Northwest Territories	Both sexes	2020-2021*	2584.0	545.0
Northwest Territories	Both sexes	2021-2022*	1845.0	550.0
Northwest Territories	Both sexes	2022-2023*	2971.0	560.0
Nunavut	Both sexes	2000-2001	\N	\N
Nunavut	Both sexes	2001-2002	\N	\N
Nunavut	Both sexes	2002-2003	\N	\N
Nunavut	Both sexes	2003-2004	\N	\N
Nunavut	Both sexes	2004-2005	\N	\N
Nunavut	Both sexes	2005-2006	\N	\N
Nunavut	Both sexes	2006-2007	\N	\N
Nunavut	Both sexes	2007-2008	\N	\N
Nunavut	Both sexes	2008-2009	\N	\N
Nunavut	Both sexes	2009-2010	\N	\N
Nunavut	Both sexes	2010-2011	\N	\N
Nunavut	Both sexes	2011-2012	\N	\N
Nunavut	Both sexes	2012-2013	\N	\N
Nunavut	Both sexes	2013-2014	\N	\N
Nunavut	Both sexes	2014-2015	\N	\N
Nunavut	Both sexes	2015-2016	\N	\N
Nunavut	Both sexes	2016-2017	\N	\N
Nunavut	Both sexes	2017-2018	\N	\N
Nunavut	Both sexes	2018-2019	\N	\N
Nunavut	Both sexes	2019-2020	\N	\N
Nunavut	Both sexes	2020-2021*	\N	\N
Nunavut	Both sexes	2021-2022*	\N	\N
Nunavut	Both sexes	2022-2023*	2531.0	265.0
\.


--
-- TOC entry 4865 (class 0 OID 25166)
-- Dependencies: 218
-- Data for Name: mortality_rates_heart_failure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mortality_rates_heart_failure (geography, sex, fiscal_year, rate_per_100k, population) FROM stdin;
Canada	Both sexes	2000-2001	7792.0	458165.0
Canada	Both sexes	2001-2002	7643.0	488010.0
Canada	Both sexes	2002-2003	7264.0	510085.0
Canada	Both sexes	2003-2004	7104.0	530525.0
Canada	Both sexes	2004-2005	6754.0	545995.0
Canada	Both sexes	2005-2006	6543.0	560170.0
Canada	Both sexes	2006-2007	6363.0	574900.0
Canada	Both sexes	2007-2008	6369.0	586005.0
Canada	Both sexes	2008-2009	6151.0	613940.0
Canada	Both sexes	2009-2010	5915.0	627240.0
Canada	Both sexes	2010-2011	5901.0	641425.0
Canada	Both sexes	2011-2012	5690.0	653650.0
Canada	Both sexes	2012-2013	5739.0	667410.0
Canada	Both sexes	2013-2014	5585.0	682220.0
Canada	Both sexes	2014-2015	5566.0	700300.0
Canada	Both sexes	2015-2016	5588.0	713795.0
Canada	Both sexes	2016-2017	5586.0	730955.0
Canada	Both sexes	2017-2018	5616.0	749085.0
Canada	Both sexes	2018-2019	5561.0	767380.0
Canada	Both sexes	2019-2020	5526.0	787340.0
Canada	Both sexes	2020-2021*	5610.0	798525.0
Canada	Both sexes	2021-2022*	5819.0	803135.0
Canada	Both sexes	2022-2023*	5761.0	827555.0
Newfoundland and Labrador	Both sexes	2000-2001	\N	0.0
Newfoundland and Labrador	Both sexes	2001-2002	\N	0.0
Newfoundland and Labrador	Both sexes	2002-2003	\N	0.0
Newfoundland and Labrador	Both sexes	2003-2004	\N	0.0
Newfoundland and Labrador	Both sexes	2004-2005	\N	0.0
Newfoundland and Labrador	Both sexes	2005-2006	\N	0.0
Newfoundland and Labrador	Both sexes	2006-2007	\N	0.0
Newfoundland and Labrador	Both sexes	2007-2008	\N	0.0
Newfoundland and Labrador	Both sexes	2008-2009	4567.0	13750.0
Newfoundland and Labrador	Both sexes	2009-2010	4423.0	14495.0
Newfoundland and Labrador	Both sexes	2010-2011	4319.0	14505.0
Newfoundland and Labrador	Both sexes	2011-2012	4707.0	14545.0
Newfoundland and Labrador	Both sexes	2012-2013	4345.0	14460.0
Newfoundland and Labrador	Both sexes	2013-2014	4867.0	14325.0
Newfoundland and Labrador	Both sexes	2014-2015	4735.0	14310.0
Newfoundland and Labrador	Both sexes	2015-2016	5218.0	14175.0
Newfoundland and Labrador	Both sexes	2016-2017	5083.0	14210.0
Newfoundland and Labrador	Both sexes	2017-2018	5460.0	14155.0
Newfoundland and Labrador	Both sexes	2018-2019	4682.0	14125.0
Newfoundland and Labrador	Both sexes	2019-2020	5889.0	14045.0
Newfoundland and Labrador	Both sexes	2020-2021*	5180.0	14000.0
Newfoundland and Labrador	Both sexes	2021-2022*	5645.0	13885.0
Newfoundland and Labrador	Both sexes	2022-2023*	5854.0	13690.0
Prince Edward Island	Both sexes	2000-2001	7662.0	2120.0
Prince Edward Island	Both sexes	2001-2002	7642.0	2290.0
Prince Edward Island	Both sexes	2002-2003	8401.0	2375.0
Prince Edward Island	Both sexes	2003-2004	7592.0	2470.0
Prince Edward Island	Both sexes	2004-2005	8019.0	2520.0
Prince Edward Island	Both sexes	2005-2006	8730.0	2535.0
Prince Edward Island	Both sexes	2006-2007	5899.0	2590.0
Prince Edward Island	Both sexes	2007-2008	5643.0	2585.0
Prince Edward Island	Both sexes	2008-2009	7809.0	2660.0
Prince Edward Island	Both sexes	2009-2010	5812.0	2745.0
Prince Edward Island	Both sexes	2010-2011	5646.0	2820.0
Prince Edward Island	Both sexes	2011-2012	4891.0	2895.0
Prince Edward Island	Both sexes	2012-2013	8305.0	2960.0
Prince Edward Island	Both sexes	2013-2014	8778.0	2940.0
Prince Edward Island	Both sexes	2014-2015	5720.0	2910.0
Prince Edward Island	Both sexes	2015-2016	6082.0	2850.0
Prince Edward Island	Both sexes	2016-2017	6232.0	2940.0
Prince Edward Island	Both sexes	2017-2018	5649.0	3010.0
Prince Edward Island	Both sexes	2018-2019	5791.0	3010.0
Prince Edward Island	Both sexes	2019-2020	5917.0	3045.0
Prince Edward Island	Both sexes	2020-2021*	5543.0	3005.0
Prince Edward Island	Both sexes	2021-2022*	6586.0	3050.0
Prince Edward Island	Both sexes	2022-2023*	7628.0	3130.0
Nova Scotia	Both sexes	2000-2001	7725.0	14490.0
Nova Scotia	Both sexes	2001-2002	6979.0	15220.0
Nova Scotia	Both sexes	2002-2003	7469.0	15820.0
Nova Scotia	Both sexes	2003-2004	6911.0	16235.0
Nova Scotia	Both sexes	2004-2005	6906.0	16455.0
Nova Scotia	Both sexes	2005-2006	7180.0	16575.0
Nova Scotia	Both sexes	2006-2007	7164.0	16835.0
Nova Scotia	Both sexes	2007-2008	6455.0	16970.0
Nova Scotia	Both sexes	2008-2009	6184.0	17305.0
Nova Scotia	Both sexes	2009-2010	6651.0	17670.0
Nova Scotia	Both sexes	2010-2011	6394.0	17845.0
Nova Scotia	Both sexes	2011-2012	6513.0	17890.0
Nova Scotia	Both sexes	2012-2013	6568.0	17805.0
Nova Scotia	Both sexes	2013-2014	7254.0	17830.0
Nova Scotia	Both sexes	2014-2015	6665.0	17760.0
Nova Scotia	Both sexes	2015-2016	6995.0	17810.0
Nova Scotia	Both sexes	2016-2017	6544.0	17960.0
Nova Scotia	Both sexes	2017-2018	6994.0	18240.0
Nova Scotia	Both sexes	2018-2019	6885.0	18370.0
Nova Scotia	Both sexes	2019-2020	6479.0	18865.0
Nova Scotia	Both sexes	2020-2021*	7076.0	19195.0
Nova Scotia	Both sexes	2021-2022*	7460.0	19715.0
Nova Scotia	Both sexes	2022-2023*	7640.0	20440.0
New Brunswick	Both sexes	2000-2001	8545.0	12505.0
New Brunswick	Both sexes	2001-2002	7315.0	13125.0
New Brunswick	Both sexes	2002-2003	8489.0	13540.0
New Brunswick	Both sexes	2003-2004	7040.0	13805.0
New Brunswick	Both sexes	2004-2005	7342.0	13900.0
New Brunswick	Both sexes	2005-2006	6670.0	13935.0
New Brunswick	Both sexes	2006-2007	6311.0	14160.0
New Brunswick	Both sexes	2007-2008	6281.0	14325.0
New Brunswick	Both sexes	2008-2009	6970.0	14590.0
New Brunswick	Both sexes	2009-2010	6401.0	14745.0
New Brunswick	Both sexes	2010-2011	7379.0	14940.0
New Brunswick	Both sexes	2011-2012	6537.0	14975.0
New Brunswick	Both sexes	2012-2013	7380.0	15050.0
New Brunswick	Both sexes	2013-2014	6372.0	15020.0
New Brunswick	Both sexes	2014-2015	7544.0	15445.0
New Brunswick	Both sexes	2015-2016	6019.0	15505.0
New Brunswick	Both sexes	2016-2017	6696.0	15770.0
New Brunswick	Both sexes	2017-2018	6208.0	15955.0
New Brunswick	Both sexes	2018-2019	7585.0	16150.0
New Brunswick	Both sexes	2019-2020	7208.0	16170.0
New Brunswick	Both sexes	2020-2021*	6309.0	16260.0
New Brunswick	Both sexes	2021-2022*	\N	0.0
New Brunswick	Both sexes	2022-2023*	\N	0.0
Quebec	Both sexes	2000-2001	8095.0	101045.0
Quebec	Both sexes	2001-2002	7836.0	108035.0
Quebec	Both sexes	2002-2003	7032.0	113260.0
Quebec	Both sexes	2003-2004	7292.0	118715.0
Quebec	Both sexes	2004-2005	6694.0	122795.0
Quebec	Both sexes	2005-2006	6517.0	125925.0
Quebec	Both sexes	2006-2007	6060.0	129475.0
Quebec	Both sexes	2007-2008	6035.0	132700.0
Quebec	Both sexes	2008-2009	6077.0	136890.0
Quebec	Both sexes	2009-2010	5828.0	140345.0
Quebec	Both sexes	2010-2011	5670.0	143365.0
Quebec	Both sexes	2011-2012	5677.0	146455.0
Quebec	Both sexes	2012-2013	5553.0	149760.0
Quebec	Both sexes	2013-2014	5514.0	153105.0
Quebec	Both sexes	2014-2015	5503.0	157355.0
Quebec	Both sexes	2015-2016	5295.0	160570.0
Quebec	Both sexes	2016-2017	5195.0	165475.0
Quebec	Both sexes	2017-2018	5206.0	169935.0
Quebec	Both sexes	2018-2019	5363.0	174290.0
Quebec	Both sexes	2019-2020	5115.0	178345.0
Quebec	Both sexes	2020-2021*	5076.0	180145.0
Quebec	Both sexes	2021-2022*	5144.0	185120.0
Quebec	Both sexes	2022-2023*	5250.0	191635.0
Ontario	Both sexes	2000-2001	7913.0	183920.0
Ontario	Both sexes	2001-2002	7700.0	196310.0
Ontario	Both sexes	2002-2003	7412.0	204980.0
Ontario	Both sexes	2003-2004	7166.0	211315.0
Ontario	Both sexes	2004-2005	6843.0	216440.0
Ontario	Both sexes	2005-2006	6527.0	221190.0
Ontario	Both sexes	2006-2007	6399.0	226350.0
Ontario	Both sexes	2007-2008	6403.0	230145.0
Ontario	Both sexes	2008-2009	6223.0	234875.0
Ontario	Both sexes	2009-2010	5953.0	239140.0
Ontario	Both sexes	2010-2011	5925.0	244290.0
Ontario	Both sexes	2011-2012	5668.0	248805.0
Ontario	Both sexes	2012-2013	5769.0	254375.0
Ontario	Both sexes	2013-2014	5481.0	260895.0
Ontario	Both sexes	2014-2015	5449.0	267905.0
Ontario	Both sexes	2015-2016	5636.0	272655.0
Ontario	Both sexes	2016-2017	5753.0	278805.0
Ontario	Both sexes	2017-2018	5727.0	286080.0
Ontario	Both sexes	2018-2019	5675.0	292890.0
Ontario	Both sexes	2019-2020	5799.0	300100.0
Ontario	Both sexes	2020-2021*	5661.0	303025.0
Ontario	Both sexes	2021-2022*	6047.0	309995.0
Ontario	Both sexes	2022-2023*	5921.0	318715.0
Manitoba	Both sexes	2000-2001	8490.0	23150.0
Manitoba	Both sexes	2001-2002	8889.0	24290.0
Manitoba	Both sexes	2002-2003	8033.0	25010.0
Manitoba	Both sexes	2003-2004	7974.0	25555.0
Manitoba	Both sexes	2004-2005	7807.0	25825.0
Manitoba	Both sexes	2005-2006	7715.0	25670.0
Manitoba	Both sexes	2006-2007	7297.0	25515.0
Manitoba	Both sexes	2007-2008	7209.0	25505.0
Manitoba	Both sexes	2008-2009	7128.0	25615.0
Manitoba	Both sexes	2009-2010	7019.0	25665.0
Manitoba	Both sexes	2010-2011	7344.0	25860.0
Manitoba	Both sexes	2011-2012	7224.0	25800.0
Manitoba	Both sexes	2012-2013	7230.0	26045.0
Manitoba	Both sexes	2013-2014	6729.0	26455.0
Manitoba	Both sexes	2014-2015	6754.0	27025.0
Manitoba	Both sexes	2015-2016	6916.0	27165.0
Manitoba	Both sexes	2016-2017	7061.0	27240.0
Manitoba	Both sexes	2017-2018	6560.0	27470.0
Manitoba	Both sexes	2018-2019	6641.0	27500.0
Manitoba	Both sexes	2019-2020	6731.0	28025.0
Manitoba	Both sexes	2020-2021*	6976.0	28455.0
Manitoba	Both sexes	2021-2022*	6983.0	29095.0
Manitoba	Both sexes	2022-2023*	6736.0	29945.0
Saskatchewan	Both sexes	2000-2001	7302.0	22035.0
Saskatchewan	Both sexes	2001-2002	6862.0	23515.0
Saskatchewan	Both sexes	2002-2003	7028.0	24655.0
Saskatchewan	Both sexes	2003-2004	6671.0	25255.0
Saskatchewan	Both sexes	2004-2005	6359.0	25630.0
Saskatchewan	Both sexes	2005-2006	6125.0	25930.0
Saskatchewan	Both sexes	2006-2007	6835.0	26335.0
Saskatchewan	Both sexes	2007-2008	7374.0	26395.0
Saskatchewan	Both sexes	2008-2009	6061.0	26340.0
Saskatchewan	Both sexes	2009-2010	7112.0	26105.0
Saskatchewan	Both sexes	2010-2011	7310.0	26105.0
Saskatchewan	Both sexes	2011-2012	6117.0	25850.0
Saskatchewan	Both sexes	2012-2013	6196.0	25475.0
Saskatchewan	Both sexes	2013-2014	7222.0	25130.0
Saskatchewan	Both sexes	2014-2015	6355.0	24985.0
Saskatchewan	Both sexes	2015-2016	6856.0	24830.0
Saskatchewan	Both sexes	2016-2017	6856.0	24750.0
Saskatchewan	Both sexes	2017-2018	7110.0	24715.0
Saskatchewan	Both sexes	2018-2019	6635.0	24665.0
Saskatchewan	Both sexes	2019-2020	6680.0	24595.0
Saskatchewan	Both sexes	2020-2021*	6797.0	24230.0
Saskatchewan	Both sexes	2021-2022*	7823.0	24150.0
Saskatchewan	Both sexes	2022-2023*	7808.0	23800.0
Alberta	Both sexes	2000-2001	6773.0	42705.0
Alberta	Both sexes	2001-2002	7105.0	45770.0
Alberta	Both sexes	2002-2003	6116.0	48125.0
Alberta	Both sexes	2003-2004	6581.0	50480.0
Alberta	Both sexes	2004-2005	5832.0	52170.0
Alberta	Both sexes	2005-2006	6073.0	54155.0
Alberta	Both sexes	2006-2007	6171.0	55605.0
Alberta	Both sexes	2007-2008	6386.0	56575.0
Alberta	Both sexes	2008-2009	6498.0	57640.0
Alberta	Both sexes	2009-2010	5925.0	58735.0
Alberta	Both sexes	2010-2011	5772.0	60175.0
Alberta	Both sexes	2011-2012	5814.0	61745.0
Alberta	Both sexes	2012-2013	5784.0	63600.0
Alberta	Both sexes	2013-2014	5614.0	65095.0
Alberta	Both sexes	2014-2015	5912.0	67165.0
Alberta	Both sexes	2015-2016	5736.0	69090.0
Alberta	Both sexes	2016-2017	5203.0	71190.0
Alberta	Both sexes	2017-2018	5851.0	73320.0
Alberta	Both sexes	2018-2019	5016.0	75775.0
Alberta	Both sexes	2019-2020	4839.0	79070.0
Alberta	Both sexes	2020-2021*	5731.0	80835.0
Alberta	Both sexes	2021-2022*	5582.0	83265.0
Alberta	Both sexes	2022-2023*	5650.0	87475.0
British Columbia	Both sexes	2000-2001	7460.0	55920.0
British Columbia	Both sexes	2001-2002	7575.0	59155.0
British Columbia	Both sexes	2002-2003	7812.0	61985.0
British Columbia	Both sexes	2003-2004	6874.0	66345.0
British Columbia	Both sexes	2004-2005	7063.0	69910.0
British Columbia	Both sexes	2005-2006	6583.0	73665.0
British Columbia	Both sexes	2006-2007	6468.0	77400.0
British Columbia	Both sexes	2007-2008	6326.0	80150.0
British Columbia	Both sexes	2008-2009	5991.0	83610.0
British Columbia	Both sexes	2009-2010	5613.0	86890.0
British Columbia	Both sexes	2010-2011	5884.0	90345.0
British Columbia	Both sexes	2011-2012	5181.0	93470.0
British Columbia	Both sexes	2012-2013	5341.0	96605.0
British Columbia	Both sexes	2013-2014	5029.0	100095.0
British Columbia	Both sexes	2014-2015	4983.0	104040.0
British Columbia	Both sexes	2015-2016	4969.0	107635.0
British Columbia	Both sexes	2016-2017	5116.0	111045.0
British Columbia	Both sexes	2017-2018	4935.0	114560.0
British Columbia	Both sexes	2018-2019	5164.0	118840.0
British Columbia	Both sexes	2019-2020	4961.0	123265.0
British Columbia	Both sexes	2020-2021*	5302.0	127480.0
British Columbia	Both sexes	2021-2022*	5569.0	132835.0
British Columbia	Both sexes	2022-2023*	5275.0	137225.0
Yukon Territory	Both sexes	2000-2001	\N	0.0
Yukon Territory	Both sexes	2001-2002	\N	0.0
Yukon Territory	Both sexes	2002-2003	\N	0.0
Yukon Territory	Both sexes	2003-2004	\N	0.0
Yukon Territory	Both sexes	2004-2005	\N	0.0
Yukon Territory	Both sexes	2005-2006	\N	0.0
Yukon Territory	Both sexes	2006-2007	\N	0.0
Yukon Territory	Both sexes	2007-2008	\N	0.0
Yukon Territory	Both sexes	2008-2009	\N	0.0
Yukon Territory	Both sexes	2009-2010	\N	0.0
Yukon Territory	Both sexes	2010-2011	5168.0	420.0
Yukon Territory	Both sexes	2011-2012	6914.0	470.0
Yukon Territory	Both sexes	2012-2013	5803.0	500.0
Yukon Territory	Both sexes	2013-2014	3360.0	550.0
Yukon Territory	Both sexes	2014-2015	4218.0	625.0
Yukon Territory	Both sexes	2015-2016	4685.0	670.0
Yukon Territory	Both sexes	2016-2017	4531.0	715.0
Yukon Territory	Both sexes	2017-2018	3786.0	745.0
Yukon Territory	Both sexes	2018-2019	4108.0	810.0
Yukon Territory	Both sexes	2019-2020	\N	0.0
Yukon Territory	Both sexes	2020-2021*	2764.0	910.0
Yukon Territory	Both sexes	2021-2022*	4171.0	995.0
Yukon Territory	Both sexes	2022-2023*	2675.0	1040.0
Northwest Territories	Both sexes	2000-2001	\N	0.0
Northwest Territories	Both sexes	2001-2002	9639.0	305.0
Northwest Territories	Both sexes	2002-2003	\N	0.0
Northwest Territories	Both sexes	2003-2004	10006.0	335.0
Northwest Territories	Both sexes	2004-2005	7867.0	360.0
Northwest Territories	Both sexes	2005-2006	5134.0	375.0
Northwest Territories	Both sexes	2006-2007	4582.0	400.0
Northwest Territories	Both sexes	2007-2008	6624.0	415.0
Northwest Territories	Both sexes	2008-2009	4999.0	425.0
Northwest Territories	Both sexes	2009-2010	7559.0	430.0
Northwest Territories	Both sexes	2010-2011	4733.0	430.0
Northwest Territories	Both sexes	2011-2012	\N	0.0
Northwest Territories	Both sexes	2012-2013	5658.0	450.0
Northwest Territories	Both sexes	2013-2014	4881.0	445.0
Northwest Territories	Both sexes	2014-2015	5203.0	440.0
Northwest Territories	Both sexes	2015-2016	7867.0	460.0
Northwest Territories	Both sexes	2016-2017	6476.0	475.0
Northwest Territories	Both sexes	2017-2018	7181.0	505.0
Northwest Territories	Both sexes	2018-2019	\N	0.0
Northwest Territories	Both sexes	2019-2020	6901.0	550.0
Northwest Territories	Both sexes	2020-2021*	8128.0	555.0
Northwest Territories	Both sexes	2021-2022*	4257.0	575.0
Northwest Territories	Both sexes	2022-2023*	\N	0.0
Nunavut	Both sexes	2000-2001	\N	0.0
Nunavut	Both sexes	2001-2002	\N	0.0
Nunavut	Both sexes	2002-2003	\N	0.0
Nunavut	Both sexes	2003-2004	\N	0.0
Nunavut	Both sexes	2004-2005	\N	0.0
Nunavut	Both sexes	2005-2006	9638.0	215.0
Nunavut	Both sexes	2006-2007	6460.0	230.0
Nunavut	Both sexes	2007-2008	3518.0	250.0
Nunavut	Both sexes	2008-2009	5387.0	260.0
Nunavut	Both sexes	2009-2010	\N	0.0
Nunavut	Both sexes	2010-2011	4458.0	310.0
Nunavut	Both sexes	2011-2012	7246.0	325.0
Nunavut	Both sexes	2012-2013	7145.0	335.0
Nunavut	Both sexes	2013-2014	6372.0	335.0
Nunavut	Both sexes	2014-2015	5032.0	355.0
Nunavut	Both sexes	2015-2016	\N	0.0
Nunavut	Both sexes	2016-2017	9324.0	390.0
Nunavut	Both sexes	2017-2018	4692.0	405.0
Nunavut	Both sexes	2018-2019	8145.0	430.0
Nunavut	Both sexes	2019-2020	5669.0	425.0
Nunavut	Both sexes	2020-2021*	4002.0	435.0
Nunavut	Both sexes	2021-2022*	4694.0	455.0
Nunavut	Both sexes	2022-2023*	3390.0	480.0
\.


--
-- TOC entry 4866 (class 0 OID 25173)
-- Dependencies: 219
-- Data for Name: mortality_rates_ischemics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mortality_rates_ischemics (geography, sex, fiscal_year, rate_per_100k, population) FROM stdin;
Canada	Both sexes	2000-2001	2258.0	1494930.0
Canada	Both sexes	2001-2002	2201.0	1610400.0
Canada	Both sexes	2002-2003	2117.0	1710550.0
Canada	Both sexes	2003-2004	2052.0	1799920.0
Canada	Both sexes	2004-2005	1919.0	1878505.0
Canada	Both sexes	2005-2006	1820.0	1952365.0
Canada	Both sexes	2006-2007	1846.0	2019310.0
Canada	Both sexes	2007-2008	1819.0	2079125.0
Canada	Both sexes	2008-2009	1793.0	2172355.0
Canada	Both sexes	2009-2010	1732.0	2223450.0
Canada	Both sexes	2010-2011	1739.0	2276635.0
Canada	Both sexes	2011-2012	1682.0	2323690.0
Canada	Both sexes	2012-2013	1706.0	2368735.0
Canada	Both sexes	2013-2014	1629.0	2408240.0
Canada	Both sexes	2014-2015	1669.0	2444865.0
Canada	Both sexes	2015-2016	1675.0	2478700.0
Canada	Both sexes	2016-2017	1697.0	2521690.0
Canada	Both sexes	2017-2018	1735.0	2559125.0
Canada	Both sexes	2018-2019	1658.0	2592965.0
Canada	Both sexes	2019-2020	1635.0	2632580.0
Canada	Both sexes	2020-2021*	1706.0	2656200.0
Canada	Both sexes	2021-2022*	1721.0	2618010.0
Canada	Both sexes	2022-2023*	1701.0	2647665.0
Newfoundland and Labrador	Both sexes	2000-2001	\N	\N
Newfoundland and Labrador	Both sexes	2001-2002	\N	\N
Newfoundland and Labrador	Both sexes	2002-2003	\N	\N
Newfoundland and Labrador	Both sexes	2003-2004	\N	\N
Newfoundland and Labrador	Both sexes	2004-2005	\N	\N
Newfoundland and Labrador	Both sexes	2005-2006	\N	\N
Newfoundland and Labrador	Both sexes	2006-2007	\N	\N
Newfoundland and Labrador	Both sexes	2007-2008	\N	\N
Newfoundland and Labrador	Both sexes	2008-2009	2583.0	36960.0
Newfoundland and Labrador	Both sexes	2009-2010	2065.0	37695.0
Newfoundland and Labrador	Both sexes	2010-2011	1720.0	38245.0
Newfoundland and Labrador	Both sexes	2011-2012	1880.0	38595.0
Newfoundland and Labrador	Both sexes	2012-2013	1718.0	38965.0
Newfoundland and Labrador	Both sexes	2013-2014	1691.0	39220.0
Newfoundland and Labrador	Both sexes	2014-2015	1727.0	39195.0
Newfoundland and Labrador	Both sexes	2015-2016	2191.0	39505.0
Newfoundland and Labrador	Both sexes	2016-2017	2129.0	40120.0
Newfoundland and Labrador	Both sexes	2017-2018	2037.0	40300.0
Newfoundland and Labrador	Both sexes	2018-2019	1671.0	40960.0
Newfoundland and Labrador	Both sexes	2019-2020	1654.0	41435.0
Newfoundland and Labrador	Both sexes	2020-2021*	1932.0	41630.0
Newfoundland and Labrador	Both sexes	2021-2022*	1965.0	42005.0
Newfoundland and Labrador	Both sexes	2022-2023*	1696.0	41880.0
Prince Edward Island	Both sexes	2000-2001	\N	\N
Prince Edward Island	Both sexes	2001-2002	2248.0	6710.0
Prince Edward Island	Both sexes	2002-2003	1900.0	7005.0
Prince Edward Island	Both sexes	2003-2004	2023.0	7340.0
Prince Edward Island	Both sexes	2004-2005	1802.0	7645.0
Prince Edward Island	Both sexes	2005-2006	2681.0	7925.0
Prince Edward Island	Both sexes	2006-2007	1916.0	8180.0
Prince Edward Island	Both sexes	2007-2008	1893.0	8385.0
Prince Edward Island	Both sexes	2008-2009	1954.0	8635.0
Prince Edward Island	Both sexes	2009-2010	1819.0	8855.0
Prince Edward Island	Both sexes	2010-2011	1472.0	9095.0
Prince Edward Island	Both sexes	2011-2012	1555.0	9235.0
Prince Edward Island	Both sexes	2012-2013	1536.0	9325.0
Prince Edward Island	Both sexes	2013-2014	2242.0	9370.0
Prince Edward Island	Both sexes	2014-2015	1862.0	9295.0
Prince Edward Island	Both sexes	2015-2016	1397.0	9230.0
Prince Edward Island	Both sexes	2016-2017	1383.0	9290.0
Prince Edward Island	Both sexes	2017-2018	1578.0	9355.0
Prince Edward Island	Both sexes	2018-2019	\N	\N
Prince Edward Island	Both sexes	2019-2020	2195.0	9305.0
Prince Edward Island	Both sexes	2020-2021*	1478.0	9270.0
Prince Edward Island	Both sexes	2021-2022*	\N	\N
Prince Edward Island	Both sexes	2022-2023*	1984.0	9415.0
Nova Scotia	Both sexes	2000-2001	2184.0	50980.0
Nova Scotia	Both sexes	2001-2002	2010.0	54140.0
Nova Scotia	Both sexes	2002-2003	1782.0	57025.0
Nova Scotia	Both sexes	2003-2004	2086.0	59645.0
Nova Scotia	Both sexes	2004-2005	1854.0	61955.0
Nova Scotia	Both sexes	2005-2006	1876.0	63810.0
Nova Scotia	Both sexes	2006-2007	1900.0	65415.0
Nova Scotia	Both sexes	2007-2008	1597.0	66685.0
Nova Scotia	Both sexes	2008-2009	1690.0	68250.0
Nova Scotia	Both sexes	2009-2010	1809.0	69405.0
Nova Scotia	Both sexes	2010-2011	1658.0	70320.0
Nova Scotia	Both sexes	2011-2012	1724.0	71025.0
Nova Scotia	Both sexes	2012-2013	1619.0	71570.0
Nova Scotia	Both sexes	2013-2014	1564.0	71860.0
Nova Scotia	Both sexes	2014-2015	1556.0	72045.0
Nova Scotia	Both sexes	2015-2016	1575.0	72415.0
Nova Scotia	Both sexes	2016-2017	1531.0	72730.0
Nova Scotia	Both sexes	2017-2018	1716.0	72880.0
Nova Scotia	Both sexes	2018-2019	1684.0	72650.0
Nova Scotia	Both sexes	2019-2020	1581.0	72705.0
Nova Scotia	Both sexes	2020-2021*	1685.0	72525.0
Nova Scotia	Both sexes	2021-2022*	1609.0	72420.0
Nova Scotia	Both sexes	2022-2023*	2134.0	72040.0
New Brunswick	Both sexes	2000-2001	2436.0	41690.0
New Brunswick	Both sexes	2001-2002	2119.0	45045.0
New Brunswick	Both sexes	2002-2003	2026.0	48015.0
New Brunswick	Both sexes	2003-2004	2065.0	50470.0
New Brunswick	Both sexes	2004-2005	1695.0	52420.0
New Brunswick	Both sexes	2005-2006	1691.0	54535.0
New Brunswick	Both sexes	2006-2007	1815.0	56445.0
New Brunswick	Both sexes	2007-2008	1664.0	58190.0
New Brunswick	Both sexes	2008-2009	1661.0	59680.0
New Brunswick	Both sexes	2009-2010	2193.0	60725.0
New Brunswick	Both sexes	2010-2011	1456.0	62270.0
New Brunswick	Both sexes	2011-2012	1486.0	63765.0
New Brunswick	Both sexes	2012-2013	1601.0	65025.0
New Brunswick	Both sexes	2013-2014	1977.0	65915.0
New Brunswick	Both sexes	2014-2015	1672.0	67285.0
New Brunswick	Both sexes	2015-2016	1972.0	68500.0
New Brunswick	Both sexes	2016-2017	1852.0	69945.0
New Brunswick	Both sexes	2017-2018	1739.0	70775.0
New Brunswick	Both sexes	2018-2019	1882.0	71245.0
New Brunswick	Both sexes	2019-2020	1721.0	71730.0
New Brunswick	Both sexes	2020-2021*	1838.0	71640.0
New Brunswick	Both sexes	2021-2022*	\N	\N
New Brunswick	Both sexes	2022-2023*	\N	\N
Quebec	Both sexes	2000-2001	2630.0	382295.0
Quebec	Both sexes	2001-2002	2485.0	413740.0
Quebec	Both sexes	2002-2003	2314.0	440155.0
Quebec	Both sexes	2003-2004	2318.0	465460.0
Quebec	Both sexes	2004-2005	2134.0	485495.0
Quebec	Both sexes	2005-2006	1891.0	504410.0
Quebec	Both sexes	2006-2007	2026.0	522140.0
Quebec	Both sexes	2007-2008	2060.0	537570.0
Quebec	Both sexes	2008-2009	1921.0	551110.0
Quebec	Both sexes	2009-2010	1868.0	562160.0
Quebec	Both sexes	2010-2011	1933.0	573090.0
Quebec	Both sexes	2011-2012	1974.0	582990.0
Quebec	Both sexes	2012-2013	1925.0	593000.0
Quebec	Both sexes	2013-2014	1813.0	600190.0
Quebec	Both sexes	2014-2015	1886.0	608165.0
Quebec	Both sexes	2015-2016	1772.0	612285.0
Quebec	Both sexes	2016-2017	1756.0	621135.0
Quebec	Both sexes	2017-2018	1833.0	628135.0
Quebec	Both sexes	2018-2019	1806.0	631180.0
Quebec	Both sexes	2019-2020	1752.0	635580.0
Quebec	Both sexes	2020-2021*	1975.0	638790.0
Quebec	Both sexes	2021-2022*	1812.0	642190.0
Quebec	Both sexes	2022-2023*	1896.0	645745.0
Ontario	Both sexes	2000-2001	2026.0	646545.0
Ontario	Both sexes	2001-2002	2051.0	694785.0
Ontario	Both sexes	2002-2003	2028.0	737395.0
Ontario	Both sexes	2003-2004	1922.0	772410.0
Ontario	Both sexes	2004-2005	1790.0	804200.0
Ontario	Both sexes	2005-2006	1691.0	834195.0
Ontario	Both sexes	2006-2007	1742.0	861940.0
Ontario	Both sexes	2007-2008	1692.0	884925.0
Ontario	Both sexes	2008-2009	1713.0	907110.0
Ontario	Both sexes	2009-2010	1594.0	928245.0
Ontario	Both sexes	2010-2011	1638.0	948840.0
Ontario	Both sexes	2011-2012	1529.0	967135.0
Ontario	Both sexes	2012-2013	1572.0	983215.0
Ontario	Both sexes	2013-2014	1495.0	996970.0
Ontario	Both sexes	2014-2015	1500.0	1006215.0
Ontario	Both sexes	2015-2016	1598.0	1016475.0
Ontario	Both sexes	2016-2017	1619.0	1029500.0
Ontario	Both sexes	2017-2018	1608.0	1040655.0
Ontario	Both sexes	2018-2019	1600.0	1050560.0
Ontario	Both sexes	2019-2020	1569.0	1062135.0
Ontario	Both sexes	2020-2021*	1617.0	1062010.0
Ontario	Both sexes	2021-2022*	1643.0	1067810.0
Ontario	Both sexes	2022-2023*	1644.0	1073865.0
Manitoba	Both sexes	2000-2001	2418.0	50200.0
Manitoba	Both sexes	2001-2002	2741.0	52905.0
Manitoba	Both sexes	2002-2003	2857.0	55340.0
Manitoba	Both sexes	2003-2004	2214.0	57665.0
Manitoba	Both sexes	2004-2005	2542.0	59325.0
Manitoba	Both sexes	2005-2006	2009.0	60340.0
Manitoba	Both sexes	2006-2007	1931.0	61300.0
Manitoba	Both sexes	2007-2008	1968.0	62200.0
Manitoba	Both sexes	2008-2009	1933.0	63240.0
Manitoba	Both sexes	2009-2010	2055.0	64260.0
Manitoba	Both sexes	2010-2011	2613.0	65270.0
Manitoba	Both sexes	2011-2012	2264.0	65705.0
Manitoba	Both sexes	2012-2013	2056.0	66760.0
Manitoba	Both sexes	2013-2014	2171.0	68190.0
Manitoba	Both sexes	2014-2015	2096.0	69175.0
Manitoba	Both sexes	2015-2016	1943.0	69755.0
Manitoba	Both sexes	2016-2017	2288.0	70045.0
Manitoba	Both sexes	2017-2018	1957.0	70190.0
Manitoba	Both sexes	2018-2019	1773.0	70060.0
Manitoba	Both sexes	2019-2020	2229.0	70455.0
Manitoba	Both sexes	2020-2021*	2308.0	70630.0
Manitoba	Both sexes	2021-2022*	2176.0	70885.0
Manitoba	Both sexes	2022-2023*	1792.0	71140.0
Saskatchewan	Both sexes	2000-2001	2546.0	50215.0
Saskatchewan	Both sexes	2001-2002	2153.0	53665.0
Saskatchewan	Both sexes	2002-2003	2488.0	56620.0
Saskatchewan	Both sexes	2003-2004	1956.0	58845.0
Saskatchewan	Both sexes	2004-2005	2058.0	60835.0
Saskatchewan	Both sexes	2005-2006	1804.0	62765.0
Saskatchewan	Both sexes	2006-2007	1946.0	64220.0
Saskatchewan	Both sexes	2007-2008	2317.0	65605.0
Saskatchewan	Both sexes	2008-2009	2095.0	66705.0
Saskatchewan	Both sexes	2009-2010	1854.0	67395.0
Saskatchewan	Both sexes	2010-2011	2046.0	68415.0
Saskatchewan	Both sexes	2011-2012	1971.0	69035.0
Saskatchewan	Both sexes	2012-2013	1731.0	69445.0
Saskatchewan	Both sexes	2013-2014	1879.0	69970.0
Saskatchewan	Both sexes	2014-2015	2147.0	70260.0
Saskatchewan	Both sexes	2015-2016	2368.0	70160.0
Saskatchewan	Both sexes	2016-2017	2344.0	70490.0
Saskatchewan	Both sexes	2017-2018	2584.0	70980.0
Saskatchewan	Both sexes	2018-2019	1747.0	71010.0
Saskatchewan	Both sexes	2019-2020	2251.0	70610.0
Saskatchewan	Both sexes	2020-2021*	1966.0	70345.0
Saskatchewan	Both sexes	2021-2022*	2481.0	70085.0
Saskatchewan	Both sexes	2022-2023*	2720.0	69385.0
Alberta	Both sexes	2000-2001	2612.0	106215.0
Alberta	Both sexes	2001-2002	2258.0	115790.0
Alberta	Both sexes	2002-2003	2269.0	123790.0
Alberta	Both sexes	2003-2004	2237.0	131385.0
Alberta	Both sexes	2004-2005	1949.0	138945.0
Alberta	Both sexes	2005-2006	2161.0	146525.0
Alberta	Both sexes	2006-2007	1966.0	153780.0
Alberta	Both sexes	2007-2008	1961.0	160355.0
Alberta	Both sexes	2008-2009	1911.0	167015.0
Alberta	Both sexes	2009-2010	1956.0	173835.0
Alberta	Both sexes	2010-2011	1760.0	180955.0
Alberta	Both sexes	2011-2012	1828.0	187660.0
Alberta	Both sexes	2012-2013	1856.0	194700.0
Alberta	Both sexes	2013-2014	1642.0	201855.0
Alberta	Both sexes	2014-2015	1936.0	209860.0
Alberta	Both sexes	2015-2016	1711.0	218060.0
Alberta	Both sexes	2016-2017	1574.0	226440.0
Alberta	Both sexes	2017-2018	1723.0	234895.0
Alberta	Both sexes	2018-2019	1549.0	243895.0
Alberta	Both sexes	2019-2020	1491.0	254080.0
Alberta	Both sexes	2020-2021*	1555.0	261935.0
Alberta	Both sexes	2021-2022*	1564.0	272150.0
Alberta	Both sexes	2022-2023*	1528.0	282125.0
British Columbia	Both sexes	2000-2001	2088.0	159865.0
British Columbia	Both sexes	2001-2002	2184.0	172840.0
British Columbia	Both sexes	2002-2003	1840.0	184360.0
British Columbia	Both sexes	2003-2004	1897.0	195765.0
British Columbia	Both sexes	2004-2005	1947.0	206695.0
British Columbia	Both sexes	2005-2006	1882.0	216480.0
British Columbia	Both sexes	2006-2007	1789.0	224425.0
British Columbia	Both sexes	2007-2008	1723.0	233645.0
British Columbia	Both sexes	2008-2009	1642.0	242025.0
British Columbia	Both sexes	2009-2010	1540.0	249105.0
British Columbia	Both sexes	2010-2011	1664.0	257530.0
British Columbia	Both sexes	2011-2012	1467.0	265805.0
British Columbia	Both sexes	2012-2013	1591.0	273835.0
British Columbia	Both sexes	2013-2014	1550.0	281670.0
British Columbia	Both sexes	2014-2015	1441.0	290200.0
British Columbia	Both sexes	2015-2016	1385.0	298980.0
British Columbia	Both sexes	2016-2017	1676.0	308540.0
British Columbia	Both sexes	2017-2018	1709.0	317420.0
British Columbia	Both sexes	2018-2019	1528.0	328420.0
British Columbia	Both sexes	2019-2020	1463.0	340740.0
British Columbia	Both sexes	2020-2021*	1507.0	353600.0
British Columbia	Both sexes	2021-2022*	1699.0	367155.0
British Columbia	Both sexes	2022-2023*	1488.0	379705.0
Yukon Territory	Both sexes	2000-2001	\N	\N
Yukon Territory	Both sexes	2001-2002	\N	\N
Yukon Territory	Both sexes	2002-2003	\N	\N
Yukon Territory	Both sexes	2003-2004	\N	\N
Yukon Territory	Both sexes	2004-2005	\N	\N
Yukon Territory	Both sexes	2005-2006	\N	\N
Yukon Territory	Both sexes	2006-2007	\N	\N
Yukon Territory	Both sexes	2007-2008	\N	\N
Yukon Territory	Both sexes	2008-2009	\N	\N
Yukon Territory	Both sexes	2009-2010	\N	\N
Yukon Territory	Both sexes	2010-2011	2852.0	800.0
Yukon Territory	Both sexes	2011-2012	\N	\N
Yukon Territory	Both sexes	2012-2013	1533.0	915.0
Yukon Territory	Both sexes	2013-2014	1736.0	995.0
Yukon Territory	Both sexes	2014-2015	1568.0	1080.0
Yukon Territory	Both sexes	2015-2016	1426.0	1150.0
Yukon Territory	Both sexes	2016-2017	1265.0	1225.0
Yukon Territory	Both sexes	2017-2018	1850.0	1275.0
Yukon Territory	Both sexes	2018-2019	1388.0	1320.0
Yukon Territory	Both sexes	2019-2020	1479.0	1415.0
Yukon Territory	Both sexes	2020-2021*	1240.0	1460.0
Yukon Territory	Both sexes	2021-2022*	1218.0	1500.0
Yukon Territory	Both sexes	2022-2023*	826.0	1540.0
Northwest Territories	Both sexes	2000-2001	2869.0	670.0
Northwest Territories	Both sexes	2001-2002	1562.0	755.0
Northwest Territories	Both sexes	2002-2003	2007.0	850.0
Northwest Territories	Both sexes	2003-2004	\N	\N
Northwest Territories	Both sexes	2004-2005	2136.0	1015.0
Northwest Territories	Both sexes	2005-2006	2206.0	1035.0
Northwest Territories	Both sexes	2006-2007	2037.0	1090.0
Northwest Territories	Both sexes	2007-2008	\N	\N
Northwest Territories	Both sexes	2008-2009	1652.0	1215.0
Northwest Territories	Both sexes	2009-2010	1962.0	1285.0
Northwest Territories	Both sexes	2010-2011	1306.0	1305.0
Northwest Territories	Both sexes	2011-2012	1862.0	1345.0
Northwest Territories	Both sexes	2012-2013	\N	\N
Northwest Territories	Both sexes	2013-2014	1354.0	1400.0
Northwest Territories	Both sexes	2014-2015	1472.0	1430.0
Northwest Territories	Both sexes	2015-2016	2079.0	1485.0
Northwest Territories	Both sexes	2016-2017	2189.0	1540.0
Northwest Territories	Both sexes	2017-2018	1917.0	1540.0
Northwest Territories	Both sexes	2018-2019	1752.0	1585.0
Northwest Territories	Both sexes	2019-2020	1749.0	1605.0
Northwest Territories	Both sexes	2020-2021*	3915.0	1620.0
Northwest Territories	Both sexes	2021-2022*	\N	\N
Northwest Territories	Both sexes	2022-2023*	\N	\N
Nunavut	Both sexes	2000-2001	\N	\N
Nunavut	Both sexes	2001-2002	\N	\N
Nunavut	Both sexes	2002-2003	\N	\N
Nunavut	Both sexes	2003-2004	\N	\N
Nunavut	Both sexes	2004-2005	\N	\N
Nunavut	Both sexes	2005-2006	2896.0	340.0
Nunavut	Both sexes	2006-2007	2422.0	370.0
Nunavut	Both sexes	2007-2008	3127.0	395.0
Nunavut	Both sexes	2008-2009	\N	\N
Nunavut	Both sexes	2009-2010	4199.0	485.0
Nunavut	Both sexes	2010-2011	2519.0	505.0
Nunavut	Both sexes	2011-2012	2296.0	535.0
Nunavut	Both sexes	2012-2013	2620.0	565.0
Nunavut	Both sexes	2013-2014	2087.0	625.0
Nunavut	Both sexes	2014-2015	1683.0	670.0
Nunavut	Both sexes	2015-2016	1421.0	700.0
Nunavut	Both sexes	2016-2017	3406.0	705.0
Nunavut	Both sexes	2017-2018	1660.0	740.0
Nunavut	Both sexes	2018-2019	2871.0	760.0
Nunavut	Both sexes	2019-2020	1951.0	775.0
Nunavut	Both sexes	2020-2021*	\N	\N
Nunavut	Both sexes	2021-2022*	2733.0	805.0
Nunavut	Both sexes	2022-2023*	1364.0	830.0
\.


--
-- TOC entry 4712 (class 2606 OID 25165)
-- Name: incidence_rate_myocardial incidence_rate_myocardial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incidence_rate_myocardial
    ADD CONSTRAINT incidence_rate_myocardial_pkey PRIMARY KEY (geography, sex, fiscal_year);


--
-- TOC entry 4708 (class 2606 OID 25151)
-- Name: incidence_rates_heart_failure incidence_rates_heart_failure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incidence_rates_heart_failure
    ADD CONSTRAINT incidence_rates_heart_failure_pkey PRIMARY KEY (geography, sex, fiscal_year);


--
-- TOC entry 4710 (class 2606 OID 25158)
-- Name: incidence_rates_ischemics incidence_rates_ischemics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incidence_rates_ischemics
    ADD CONSTRAINT incidence_rates_ischemics_pkey PRIMARY KEY (geography, sex, fiscal_year);


--
-- TOC entry 4718 (class 2606 OID 25186)
-- Name: mortality_rate_myocardial mortality_rate_myocardial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_rate_myocardial
    ADD CONSTRAINT mortality_rate_myocardial_pkey PRIMARY KEY (geography, sex, fiscal_year);


--
-- TOC entry 4714 (class 2606 OID 25172)
-- Name: mortality_rates_heart_failure mortality_rates_heart_failure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_rates_heart_failure
    ADD CONSTRAINT mortality_rates_heart_failure_pkey PRIMARY KEY (geography, sex, fiscal_year);


--
-- TOC entry 4716 (class 2606 OID 25179)
-- Name: mortality_rates_ischemics mortality_rates_ischemics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_rates_ischemics
    ADD CONSTRAINT mortality_rates_ischemics_pkey PRIMARY KEY (geography, sex, fiscal_year);


-- Completed on 2024-12-30 20:21:56

--
-- PostgreSQL database dump complete
--

