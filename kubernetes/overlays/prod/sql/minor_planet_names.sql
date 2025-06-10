/*

 Target Server Type    : PostgreSQL
 Target Server Version : 170004 (170004)
 File Encoding         : 65001

 Date: 06/06/2025 16:02:02
*/

-- ----------------------------
-- Table structure for minor_planet_names
-- ----------------------------
CREATE TABLE "public"."minor_planet_names" (
  "id" int4,
  "mp_number" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "reference" text COLLATE "pg_catalog"."default" NOT NULL,
  "citation" text COLLATE "pg_catalog"."default",
  "discoverers" json,
  "created_at" timestamp(6) ,
  "updated_at" timestamp(6)
)
;

-- ----------------------------
ALTER TABLE "public"."minor_planet_names" ADD CONSTRAINT "minor_planet_names_pkey" PRIMARY KEY ("id");
