CREATE TABLE "Recipes" (
    "id" int   NOT NULL,
    "Main_Ingredient" text   NOT NULL,
    "Recipe_Name" text   NOT NULL,
    "Cook_time" int   NOT NULL,
    "Yield" int   NOT NULL,
    "Calories" float   NOT NULL,
    "URL" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Recipes" PRIMARY KEY (
        "id"
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

ALTER TABLE "Store" ADD CONSTRAINT "fk_Store_Main_Ingredient" FOREIGN KEY("Main_Ingredient")
REFERENCES "Recipes" ("Main_Ingredient");

SELECT *  FROM "Recipes"
SELECT *  FROM "Store"

-- Recipes with cook time under 15 minutes
SELECT "Recipe_Name","Cook_time" FROM "Recipes" WHERE ("Cook_time" < 15);

-- Recipe name and url where main ingredient is almonds
SELECT "Recipe_Name","URL","Main_Ingredient" FROM "Recipes" WHERE ("Main_Ingredient" = 'Almonds');

-- Recipe name and url where calories are between 200-500
SELECT "Recipe_Name","URL","Calories" FROM "Recipes" WHERE ("Calories" BETWEEN 200 AND 500);

-- Store location information in Bayonne, NJ where greek yogurt is available
SELECT "Main_Ingredient", "Store_name", "Store_url", "Store_address", "Store_city" FROM "Store" 
WHERE ("Store_city" = 'Bayonne' AND "Main_Ingredient" = 'Greek yogurt')
