class PostsController < ApplicationController

    def home
        
        api = WeatherApi.new()
        @weather = api.weather_by_city('zilina')
        @month_view= Dayer.calendar(0)
        


    end
    
    def index
        @id = params[:id].to_i
        @month_view= Dayer.calendar(params[:id].to_i)
    end
    
    def show

    end

end