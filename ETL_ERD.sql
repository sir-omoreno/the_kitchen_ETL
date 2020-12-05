-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Recipes" (
    "id" int   NOT NULL,
    "Main_Ingredient" text   NOT NULL,
    "Recipe_Name" text   NOT NULL,
    "Cook_time" int   NOT NULL,
    "Yield" int   NOT NULL,
    "Calories" float   NOT NULL,
    CONSTRAINT "pk_Recipes" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Url" (
    "id" int   NOT NULL,
    "Main_Ingredient" text   NOT NULL,
    "URL" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Url" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Ingredients" (
    "id" serial   NOT NULL,
    "Main_Ingredient" text   NOT NULL,
    CONSTRAINT "pk_Ingredients" PRIMARY KEY (
        "Main_Ingredient"
     )
);

CREATE TABLE "Store" (
    "Store_id" int   NOT NULL,
    "Main_Ingredient" text   NOT NULL,
    "Store_name" varchar(255)   NOT NULL,
    "Store_url" varchar(255)   NOT NULL,
    "Store_address" varchar(255)   NOT NULL,
    "Store_zipcode" varchar(255)   NOT NULL,
    "Store_city" varchar(255)   NOT NULL,
    "Store_state" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Store" PRIMARY KEY (
        "Store_url"
     )
);

ALTER TABLE "Url" ADD CONSTRAINT "fk_Url_Main_Ingredient" FOREIGN KEY("Main_Ingredient")
REFERENCES "Ingredients" ("Main_Ingredient");

ALTER TABLE "Ingredients" ADD CONSTRAINT "fk_Ingredients_Main_Ingredient" FOREIGN KEY("Main_Ingredient")
REFERENCES "Recipes" ("Main_Ingredient");

ALTER TABLE "Store" ADD CONSTRAINT "fk_Store_Main_Ingredient" FOREIGN KEY("Main_Ingredient")
REFERENCES "Ingredients" ("Main_Ingredient");

