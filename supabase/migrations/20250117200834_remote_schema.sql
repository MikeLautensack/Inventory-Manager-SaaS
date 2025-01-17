alter table "public"."prices" alter column "id" set default gen_random_uuid();

alter table "public"."prices" alter column "id" set data type uuid using "id"::uuid;

alter table "public"."prices" alter column "product_id" set default gen_random_uuid();

alter table "public"."prices" alter column "product_id" set data type uuid using "product_id"::uuid;

alter table "public"."products" alter column "id" set default gen_random_uuid();

alter table "public"."products" alter column "id" set data type uuid using "id"::uuid;

alter table "public"."subscriptions" alter column "id" set default gen_random_uuid();

alter table "public"."subscriptions" alter column "id" set data type uuid using "id"::uuid;

alter table "public"."subscriptions" alter column "price_id" set default gen_random_uuid();

alter table "public"."subscriptions" alter column "price_id" set data type uuid using "price_id"::uuid;


