Rails.application.routes.draw do
  get '/api/v1/login', to: "sessions#create"
  get '/api/v2/logout', to: "sessions#destroy"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      resources :user_games
    end
  end
end
