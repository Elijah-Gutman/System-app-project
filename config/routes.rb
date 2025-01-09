Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #
  #
  #
  # Users routes
  post "/users" => "users#create"
  #Sessions routes
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  #Systems routes
  get "/systems" => "systems#index"
  post "/systems" => "systems#create"
  get "/systems/:id" => "systems#show"
  patch "/systems/:id" => "systems#update"
  delete "/systems/:id" => "systems#destroy"
  #Chatbot routes
  post "/chatbot", to: "chatbot#index"
end
