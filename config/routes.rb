Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path (uncomment and customize if needed)
  # root "posts#index"

  # Quiz routes
  resources :quizzes, only: [:index, :show] do
    resources :questions, only: [:index]
  end

  # Users routes
  post "/users" => "users#create"

  # Sessions routes
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  # Systems routes
  get "/systems" => "systems#index"
  post "/systems" => "systems#create"
  get "/systems/:id" => "systems#show"
  patch "/systems/:id" => "systems#update"
  delete "/systems/:id" => "systems#destroy"

  # Chatbot routes
  post "/chatbot", to: "chatbot#index"
end
