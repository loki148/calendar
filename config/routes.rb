Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  get '/calendar', to: "posts#index"



  get '/calendar/events', to: "events#index" , as: :events
  post '/calendar/events', to: "events#create", as: :event_path
  get '/calendar/events/new', to: "events#new", as: :new_event
  get '/calendar/events/:id', to: "events#show", as: :event
  patch '/calendar/events/:id', to: "events#update"
  delete '/calendar/events/:id', to: "events#destroy", as: :delete_event
  get '/calendar/events/:id/edit', to: 'events#edit', as: :edit_event
  
  
  
  
  get '/calendar/groups', to: "groups#index" , as: :groups
  post '/calendar/groups', to: "groups#create", as: :group_path
  get '/calendar/groups/new', to: "groups#new", as: :new_group
  get '/calendar/groups/:id', to: "groups#show", as: :group
  patch '/calendar/groups/:id', to: "groups#update"
  delete '/calendar/groups/:id', to: "groups#destroy", as: :delete_group
  get '/calendar/groups/:id/edit', to: 'groups#edit', as: :edit_group

  # Defines the root path route ("/")
  root "posts#home"
end
