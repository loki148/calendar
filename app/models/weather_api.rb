require "httparty"

class WeatherApi
  include HTTParty

  base_uri  'http://api.weatherapi.com/v1'

  def initialize()
    @api_key = 'a51d407ac2184a4385a193241240405'
  end

  def weather_by_city(city)
    self.class.get("/current.json?key=#{@api_key}&q=#{city}")
  end
end