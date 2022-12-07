drop table if exists museums_fy2013
drop table if exists museums_fy2015
drop table if exists museums_locations
-- Create Tables

CREATE TABLE museums_fy2013 (
  index SERIAL PRIMARY KEY,
  museum_name TEXT,
  legal_name TEXT,
  revenue_2013 MONEY,
  region_code INT
);

-- select * from museums_fy2013


CREATE TABLE museums_fy2015 (
  index SERIAL PRIMARY KEY,
  common_name TEXT,
  legal_name TEXT,
  phone TEXT,
  weburl TEXT,
  revenue_2015 MONEY,
  long INT,
  lat INT
);

CREATE TABLE museums_locations (
  index SERIAL PRIMARY KEY,
  museum_name TEXT,
  legal_name TEXT,
  museum_type TEXT,
  street_address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT
);