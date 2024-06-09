class EventsController < ApplicationController

    before_action :set_event, only: [:show, :edit, :update, :destroy]
    before_action :load_groups, only: [:index,:new,:create, :edit, :update]

    def index
        @events = Event.all

        
    end


    def show

    end

    def new
        @event = Event.new
    end

    def create
        
        @event = Event.new(event_params)
        
        p '_____________________________'
        p '_____________________________'
        puts event_params[:date_from].class
        if @event.save
            event_start_date = Date.strptime(event_params[:date_from])
            redirect_to calendar_roll_path((12 * (event_start_date.year - Date.today.year) + event_start_date.month - Date.today.month))
        else
            render 'new', status: :unprocessable_entity
        end
    end
    
    def edit
    end
    
    def update
        
        if @event.update(event_params)
            event_start_date = Date.strptime(event_params[:date_from])
            redirect_to calendar_roll_path((12 * (event_start_date.year - Date.today.year) + event_start_date.month - Date.today.month))
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def destroy
        @event.delete
        redirect_to calendar_url
    end


    private
    def event_params
        params.require(:event).permit(:name, :time_from, :time_to, :date_from,:date_to, :body, :group)
    end

    def set_event
        @event = Event.find(params[:id])

    end
    def load_groups
        @groups = Group.all

    end

end