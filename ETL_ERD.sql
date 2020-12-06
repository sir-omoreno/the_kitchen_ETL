-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- This is our recipes database. Allows user to look for recipes and find whether a local Walmart in the NJ area carries the main ingredient. 

CREATE TABLE recipes (
    id int   NOT NULL,
    Main_Ingredient text   NOT NULL,
    Recipe_Name text   NOT NULL,
    Cook_time int   NOT NULL,
    Yield int   NOT NULL,
    Calories float   NOT NULL,
    CONSTRAINT pk_Recipes PRIMARY KEY (
        id
     )
);

CREATE TABLE url (
    id int   NOT NULL,
    Main_Ingredient text   NOT NULL,
    URL varchar(255)   NOT NULL,
    CONSTRAINT pk_Url PRIMARY KEY (
        id
     )
);

CREATE TABLE ingredients (
    id serial   NOT NULL,
    Main_Ingredient text   NOT NULL,
    CONSTRAINT pk_Ingredients PRIMARY KEY (
        id
     )
);

CREATE TABLE walmart (
    Store_id int   NOT NULL,
    Main_Ingredient text   NOT NULL,
    Store_name varchar(255)   NOT NULL,
    Store_url varchar(255)   NOT NULL,
    Store_address varchar(255)   NOT NULL,
    Store_zipcode varchar(255)   NOT NULL,
    Store_city varchar(255)   NOT NULL,
    Store_state varchar(255)   NOT NULL,
    CONSTRAINT pk_Store PRIMARY KEY (
        Store_url
     )
);

ALTER TABLE url ADD CONSTRAINT fk_Url_Main_Ingredient FOREIGN KEY(Main_Ingredient)
REFERENCES ingredients (Main_Ingredient);

ALTER TABLE ingredients ADD CONSTRAINT fk_Ingredients_Main_Ingredient FOREIGN KEY(Main_Ingredient)
REFERENCES recipes (Main_Ingredient);

ALTER TABLE walmart ADD CONSTRAINT fk_walmart_Main_Ingredient FOREIGN KEY(Main_Ingredient)
REFERENCES ingredients (Main_Ingredient);

-- Some examples of how to use this database
SELECT * FROM recipes;
SELECT * FROM ingredients;
SELECT * FROM url;
SELECT * FROM walmart;

-- Look for a recipe that uses fish, follow the url to start cooking
SELECT Recipe_Name.Recipes FROM Url WHERE Main_Ingredient = 'Fish' 


