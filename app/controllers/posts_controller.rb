class PostsController < ApplicationController

    def home
        
        api = WeatherApi.new()
        @weather = api.weather_by_city('zilina')
        


    end
    
    def index
        
      end


end