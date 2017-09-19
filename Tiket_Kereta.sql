-- Adminer 4.3.1 PostgreSQL dump

\connect "Tiket_Kereta";

CREATE SEQUENCE "City_city_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."city" (
    "city_id" bigint DEFAULT nextval('"City_city_id_seq"') NOT NULL,
    "city_name" character varying(40) NOT NULL,
    "is_valid" character varying(40),
    CONSTRAINT "City_pkey" PRIMARY KEY ("city_name")
) WITH (oids = false);


CREATE SEQUENCE customer_customer_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."customer" (
    "customer_id" bigint DEFAULT nextval('customer_customer_id_seq') NOT NULL,
    "customer_name" character varying(50) NOT NULL,
    "identity_number" character varying(20) NOT NULL,
    "customer_address" character varying(50) NOT NULL,
    "customer_email" character varying(20) NOT NULL,
    "customer_phone_number" character varying(15) NOT NULL,
    CONSTRAINT "customer_pkey" PRIMARY KEY ("customer_id")
) WITH (oids = false);


CREATE SEQUENCE user_user_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE SEQUENCE user_customer_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."user" (
    "user_id" bigint DEFAULT nextval('user_user_id_seq') NOT NULL,
    "password" character varying(40) NOT NULL,
    "customer_id" bigint DEFAULT nextval('user_customer_id_seq') NOT NULL,
    CONSTRAINT "user_pkey" PRIMARY KEY ("user_id"),
    CONSTRAINT "customer" FOREIGN KEY (customer_id) REFERENCES customer(customer_id) NOT DEFERRABLE
) WITH (oids = false);


-- 2017-09-18 15:41:22.061385+07
