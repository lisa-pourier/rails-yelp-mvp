Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # see ALL the restaurants
  get "restaurants", to: "restaurants#index"

  # see 1 specific restaurant
  get "restaurants", to: "restaurants#show"

  # add a new restaurant AND create it
  get "restaurants/new", to: "restaurant#new"
  post "restaurants", to: "restaurant#create"


end
