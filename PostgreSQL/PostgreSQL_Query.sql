-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "museums_location" (
    "LocationID" int   NOT NULL,
    "Museum_name" varchar   NULL,
    "Legal_name" varchar   NOT NULL,
    "Museum_type" varchar   NULL,
    "Street_address" varchar   NULL,
    "City" varchar   NULL,
    "State" varchar   NULL,
    "Zip_code" int   NULL,
    CONSTRAINT "pk_museums_location" PRIMARY KEY (
        "LocationID"
     ),
    CONSTRAINT "uc_museums_location_Legal_name" UNIQUE (
        "Legal_name"
    )
);

-- Museums Fiscal Year 2015
CREATE TABLE "museums_fy2015" (
    "FY2015ID" int   NOT NULL,
    "Common_name" varchar   NULL,
    "Legal_name" varchar   NOT NULL,
    "Phone" int   NULL,
    "Weburl" varchar   NULL,
    "Revenue_2015" money   NULL,
    "Long" float   NULL,
    "Lat" float   NULL,
    CONSTRAINT "pk_museums_fy2015" PRIMARY KEY (
        "FY2015ID"
     ),
    CONSTRAINT "uc_museums_fy2015_Legal_name" UNIQUE (
        "Legal_name"
    )
);

-- Museums Fiscal Year 2013
CREATE TABLE "museums_fy2013" (
    "FY2013ID" int   NOT NULL,
    "Museum_name" varchar   NULL,
    "Legal_name" varchar   NOT NULL,
    "Revenue_2013" money   NULL,
    "Region_code" int   NULL,
    CONSTRAINT "pk_museums_fy2013" PRIMARY KEY (
        "FY2013ID"
     ),
    CONSTRAINT "uc_museums_fy2013_Legal_name" UNIQUE (
        "Legal_name"
    )
);

-- Museums Compiled
CREATE TABLE "museums_directory" (
    "DirectoryID" int   NOT NULL,
    "Legal_name" varchar   NOT NULL,
    "Museum_type" varchar   NULL,
    "Street_address" varchar   NULL,
    "City" varchar   NULL,
    "State" varchar   NULL,
    "Zip_code" int   NULL,
    "Lat" float   NULL,
    "Long" float   NULL,
    "Region_code" int   NULL,
    "Phone" bigint   NULL,
    "Weburl" varchar   NULL,
    "Revenue_2013" money   NULL,
    "Revenue_2015" money   NULL,
    CONSTRAINT "pk_museums_directory" PRIMARY KEY (
        "DirectoryID"
     ),
    CONSTRAINT "uc_museums_directory_Legal_name" UNIQUE (
        "Legal_name"
    )
);





select * from museums_directory
select * from museums_fy2013
select * from museums_fy2015
select * from museums_location




