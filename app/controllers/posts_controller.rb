class PostsController < ApplicationController

    def home
        api_key = 'a51d407ac2184a4385a193241240405'
        api = WeatherApi.new(api_key)
        @weather = api.weather_by_city('zilina')
        


    end
    
    def index
        
      end


end