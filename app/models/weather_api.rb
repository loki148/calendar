require "httparty"

class WeatherApi
  include HTTParty

  base_uri  'http://api.weatherapi.com/v1'

  def initialize(api_key)
    @api_key = api_key
  end

  def weather_by_city(city)
    self.class.get("/current.json?key=#{@api_key}&q=#{city}")
  end
end