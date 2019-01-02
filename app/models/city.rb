class City < ApplicationRecord
  attr_accessor :temperature, :conditions, :wind, :humidity

  def weather_api(city_name)
    RestClient.get("api.openweathermap.org/data/2.5/weather?q=#{city_name}&appid=#{ENV['API_KEY']}&units=imperial")
  end
  
  def get_weather
    JSON.parse(weather_api(self.name))
  end
end
