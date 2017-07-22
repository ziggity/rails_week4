# README

# Project details:
Building an API
Project

You've completed a few projects at the dev agency where you work and you've been given more autonomy to choose which project you'd like to work on next. The agency currently has three new back-end contracts to build APIs for their clients. Take your pick! Since this is the first time you've been given free rein on a project, take this opportunity to showcase your versatility for the project manager. This week, your goal is to have the best custom endpoint. Usefulness, creativity and conciseness of code will all be considered.

Building an API
For your final code review, you’ll build one of the three APIs below:

Animal Shelter: Create an API for a local animal shelter. The API will list the available cats and dogs at the shelter.
Local Business Lookup: Create an API for a local business lookup. The API will list restaurants and shops in town.
Parks Lookup: Create an API for state and national parks. The API will list state and national parks.
You have the freedom to build out your APIs as you wish. At the very least, your API should include the following:

Endpoints for GET (all and by id), POST, PUT and DELETE.
A RANDOM endpoint that randomly returns a park/business/animal.
A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
Model scopes should be used to process parameters from API calls.
At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).
Thorough exception handling.
Complete testing with request specs.
Randomized data with Faker or your own custom seed code.
A README that thoroughly documents all endpoints, including parameters that can be passed in.
Further Exploration
Once you complete the requirements for the code review, consider adding other functionality from Monday’s Further Exploration. Get creative and add other custom routes, scopes and functionality as well!


# Planning:

[X] Build API for business to showcase in a given area. GET (all and by id), POST, PUT and DELETE
[X] Use Postman for testing API calls
[X] Version the API v1.
[X] Add Random endpoint which returns random data from our db.
[X] Search API method - second API endpoint
[X] Complete testing with request specs.
[X] Randomized data with Faker or your own custom seed code.
[X] A README that thoroughly documents all endpoints, including parameters that can be passed in
[X] exception handling


## Installation
------------


 * git clone https://github.com/ziggity/rails_week4

 ``
 cd rails_week4
``

* You must install gems:

``
 bundle install
``

* Start postgres in another terminal tab (Cmd + T):

``
 postgres
``

* Create databases:

``
 rails db:create db:migrate db:seed

``
* Start the webserver:

``
 rails s
``

Navigate to `localhost:3000`

# routes:

``
Get & post:
http://localhost:3000/api/v1/shops
``
``
Get by ID:
http://localhost:3000/api/v1/shops/:5
``
``
Patch, delete, put : http://localhost:3000/api/v1/shops/:id
``


## Known Bugs
none

## Technologies Used

Ruby on Rails

### License

MIT

Copyright (c) 2017 **Zach Beecher**
