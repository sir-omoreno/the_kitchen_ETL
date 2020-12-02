# the_kitchen_ETL

ETL Project - Bringing people together one recipe at a time

## Project Team / Organization
<table>
  <th>Name</th>
  <th>Title</th>
  <tr>
   <td>Kevin Lam</td>
    <td>Programmer Analyst</td>
  </tr>
   <tr>
    <td>Rachel Chan</td>
    <td>Programmer Analyst</td>
  </tr>
  <tr>
    <td>Ramyata Upmaka</td>
    <td>Programmer Analyst</td>
  </tr>
  <tr>
  </tr>
    <td>Ozzie Moreno</td>
    <td>Programmer Analyst</td>
</table>

## Project Overview

PURPOSE/SCOPE: <br/>

* A brief description of your final database
    Our database will be a Food/Recipes database with several recipes, food categories, cook times, price, among other variables
* Why your final database will be useful to a hypothetical organization
    Everyone loves food! This is for individual consumers.
* A list your data sources
    Spoonacular API
    Other Food site (i.e. Food Network, NYTimes, etc)
* A brief sumarry of the three ETL steps you will take to create this database
    1. Extract data from each source
    2. Use Pandas to create dataframes with only the necessary data elements
    3. Create a set of collections in MongoDB and load the data into the collections
* A description of what each team member will be responsible for
    1. GitHub setup - Ozzie M
    2. Extract Data from Source 1, 2 - All 4 team members (work on this during Thanksgiving break)
    4. Pandas / Data transforming - Kevin Lam 
    5. Setting up database - Ozzie / Ramyata Upmaka
    5. Flask / HTML - Rachel Chan / Kevin Lam
    6. Read Me - Team members will fill this out after each step
Collapse

## Extraction

Edamam API | Beautiful Soup | Pandas | (Insert other tools....)

### Methods

Webscraped Healthlines "20 Delicious High Protein foods to Eat."

Using the edamam api, pulled the top 50? recipe lists for each protein.

#### The Recipes

Looking for the following:

* Recipe Name
* Cooking Time
* Serving Yield.
* Recipe Url

### Coupon api

## Transform

### Methods

Insert the info to data frame, blah blah blah.

## Load

### Methods

Load the dataframes to mongodb/postgresql?

## Query time

### Do you wanna build a deviled egg

Something about finding recipes....

### Quick Snack

Query about the cooking time.