/*
 

 Target Server Type    : PostgreSQL
 Target Server Version : 170004 (170004)
 File Encoding         : 65001

 Date: 01/05/2025 08:50:20
*/


-- ----------------------------
-- Table structure for obscodes
-- ----------------------------
--DROP TABLE IF EXISTS "public"."obscodes";


CREATE TABLE "public"."obscodes" (
  "id" int4 NOT NULL,
  "obscode" varchar(4) COLLATE "pg_catalog"."default",
  "longitude" numeric,
  "rhocosphi" numeric,
  "rhosinphi" numeric,
  "name" varchar COLLATE "pg_catalog"."default",
  "firstdate" varchar(10) COLLATE "pg_catalog"."default",
  "lastdate" varchar(10) COLLATE "pg_catalog"."default",
  "web_link" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now(),
  "short_name" varchar(255) COLLATE "pg_catalog"."default",
  "uses_two_line_observations" bool,
  "old_names" varchar[] COLLATE "pg_catalog"."default",
  "name_utf8" varchar(255) COLLATE "pg_catalog"."default",
  "name_latex" varchar(255) COLLATE "pg_catalog"."default",
  "observations_type" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."obscodes" OWNER TO "postgres";
COMMENT ON COLUMN "public"."obscodes"."obscode" IS 'Observatory code. Unique identifier for an observatory (or telescope) site';
COMMENT ON COLUMN "public"."obscodes"."longitude" IS 'Longitude of observatory, as submitted by observer';
COMMENT ON COLUMN "public"."obscodes"."rhocosphi" IS 'rho*cos(phi) as calculated from the latitude and elevation.';
COMMENT ON COLUMN "public"."obscodes"."rhosinphi" IS 'rho*sin(phi) as calculated from the latitude and elevation.';
COMMENT ON COLUMN "public"."obscodes"."name" IS 'Full observatory name in ASCII-only characters';
COMMENT ON COLUMN "public"."obscodes"."firstdate" IS 'Date observatory was opened/commissioned';
COMMENT ON COLUMN "public"."obscodes"."lastdate" IS 'Date observatory was closed/decommissioned';
COMMENT ON COLUMN "public"."obscodes"."web_link" IS 'URL of observatory website';
COMMENT ON COLUMN "public"."obscodes"."created_at" IS 'Timestamp at which this database entry was created';
COMMENT ON COLUMN "public"."obscodes"."updated_at" IS 'Timestamp at which this database entry was last updated';
COMMENT ON COLUMN "public"."obscodes"."short_name" IS 'Short version of observatory name, < 48 ASCII characters.';
COMMENT ON COLUMN "public"."obscodes"."uses_two_line_observations" IS 'Whether this obscode uses two-line observations (True) or one-line observations (False)';
COMMENT ON COLUMN "public"."obscodes"."old_names" IS 'Record of old names used by this obscode';
COMMENT ON COLUMN "public"."obscodes"."name_utf8" IS 'Full observatory name (including accents and special characters) in UTF-8.';
COMMENT ON COLUMN "public"."obscodes"."name_latex" IS 'Full observatory name (including accents and special characters) in LaTeX format.';
COMMENT ON COLUMN "public"."obscodes"."observations_type" IS 'Type of observations: "optical", "occultation", "satellite", "radar"';

-- ----------------------------
-- Indexes structure for table obscodes
-- ----------------------------
CREATE INDEX "obscodes_name_idx" ON "public"."obscodes" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table obscodes
-- ----------------------------
ALTER TABLE "public"."obscodes" ADD CONSTRAINT "obscodes_obscode_key" UNIQUE ("obscode");

-- ----------------------------
-- Primary Key structure for table obscodes
-- ----------------------------
ALTER TABLE "public"."obscodes" ADD CONSTRAINT "obscodes_pkey" PRIMARY KEY ("id");
