-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "museums_location" (
    "index"  SERIAL  NOT NULL,
    "museum_name" text   NULL,
    "legal_name" text   NULL,
    "museum_type" text   NULL,
    "street_address" text   NULL,
    "city" text   NULL,
    "state" text   NULL,
    "zip_code" text   NULL,
    CONSTRAINT "pk_museums_location" PRIMARY KEY (
        "index"
     )
);

-- Museums Fiscal Year 2015
CREATE TABLE "museums_fy2015" (
    "index"  SERIAL  NOT NULL,
    "common_name" text   NULL,
    "legal_name" text   NULL,
    "phone" text   NULL,
    "weburl" text   NULL,
    "revenue_2015" money   NULL,
    "long" float   NULL,
    "lat" float   NULL,
    CONSTRAINT "pk_museums_fy2015" PRIMARY KEY (
        "index"
     )
);

-- Museums Fiscal Year 2013
CREATE TABLE "museums_fy2013" (
    "index"  SERIAL  NOT NULL,
    "museum_name" text   NULL,
    "legal_name" text   NULL,
    "revenue_2013" money   NULL,
    "region_code" int   NULL,
    CONSTRAINT "pk_museums_fy2013" PRIMARY KEY (
        "index"
     )
);

