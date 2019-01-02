class CitiesController < ApplicationController
  Dotenv.load
  def index
    @cities = City.all
    @cities.map do |city|
      weather_data = city.get_weather
      city.conditions = weather_data["weather"][0]["main"]
      city.temperature = weather_data["main"]["temp"]
    end
  end

  def show
    @city = City.find(params[:id])
    weather_data = @city.get_weather
    @city.conditions = weather_data["weather"][0]["main"]
    @city.temperature = weather_data["main"]["temp"]
    @city.wind = weather_data["wind"]["speed"]
    @city.humidity = weather_data["main"]["humidity"]
  end
end
