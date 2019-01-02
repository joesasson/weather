# Weather

Objective is to retrieve and display the weather information for 5 different cities with a details page for each

# Versions

- ruby 2.5
- rails 5

## Running Instructions

Bullets in monospace are commands to run

- `git clone git@github.com:joesasson/weather.git`
- `touch .env`
- Add your key to the `.env` file under the key `API_KEY`
- `rails db:migrate && rails db:seed`
- `rails s`
- Open `localhost:3000` on your browser for the index page, each city on the list links to its details page



## Models

I will choose a simple model of City with fields for the name

## Views

On the index page, I will display just the temperature and conditions, in the show I'll add some more details

## Controller

I will pull the data from the api with the name as the parameter sent to the api

