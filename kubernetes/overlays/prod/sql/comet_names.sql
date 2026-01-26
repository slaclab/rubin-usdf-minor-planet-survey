/*

 Target Server Type    : PostgreSQL
 File Encoding         : 65001

 Date: 21/01/2026 08:58:13
*/


-- ----------------------------
-- Table structure for comet_names
-- ----------------------------
--DROP TABLE IF EXISTS "public"."comet_names";
CREATE TABLE "public"."comet_names" (
  "id" int4 NOT NULL,
  "packed_primary_provisional_designation" text COLLATE "pg_catalog"."default" NOT NULL,
  "unpacked_primary_provisional_designation" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" text COLLATE "pg_catalog"."default",
  "naming_publication_references" text[] COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) DEFAULT timezone('utc'::text, now()),
  "updated_at" timestamp(6) DEFAULT timezone('utc'::text, now())
)
;
ALTER TABLE "public"."comet_names" OWNER TO "postgres";
COMMENT ON COLUMN "public"."comet_names"."name" IS 'UNnumbered comets have parentheses around the name as per the convention but numbered comets do not';
COMMENT ON TABLE "public"."comet_names" IS 'List of COMET primary provisional designations (packed and unpacked) and their names and publication references';

-- ----------------------------
-- Indexes structure for table comet_names
-- ----------------------------
CREATE INDEX "comet_names_packed_primary_provisional_designation_idx" ON "public"."comet_names" USING btree (
  "packed_primary_provisional_designation" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table comet_names
-- ----------------------------
ALTER TABLE "public"."comet_names" ADD CONSTRAINT "comet_names_pkey" PRIMARY KEY ("id");
