Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/logout", to: "api/v1/sessions#destroy"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      resources :user_games
    end
  end
end
