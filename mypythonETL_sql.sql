
CREATE TABLE mmr (
    "Names" TEXT PRIMARY KEY,
    "2000" NUMERIC(2),
    "2001" NUMERIC(2),
    "2002" NUMERIC(2),
    "2003" NUMERIC(2),
    "2004" NUMERIC(2),
    "2005" NUMERIC(2),
    "2006" NUMERIC(2),
    "2007" NUMERIC(2),
    "2008" NUMERIC(2),
    "2009" NUMERIC(2),
    "2010" NUMERIC(2),
    "2011" NUMERIC(2),
    "2012" NUMERIC(2),
    "2013" NUMERIC(2),
    "2014" NUMERIC(2),
    "2015" NUMERIC(2),
    "2016" NUMERIC(2),
    "2017" NUMERIC(2)
);

CREATE TABLE autism (
    abbr TEXT PRIMARY KEY,
    "2000" VARCHAR(50),
    "2002" VARCHAR(50),
    "2004" VARCHAR(50),
    "2006" VARCHAR(50),
    "2008" VARCHAR(50),
    "2010" VARCHAR(50),
    "2012" VARCHAR(50),
    "2014" VARCHAR(50)
);
CREATE TABLE states (
    state_name TEXT,
    abbr TEXT PRIMARY KEY
);

SELECT * FROM autism
;
SELECT * FROM mmr
;
SELECT * FROM states
;

SELECT *
FROM states
LEFT JOIN mmr
ON mmr."Names" = states.state_name
LEFT JOIN autism
ON autism.abbr = states.abbr
;