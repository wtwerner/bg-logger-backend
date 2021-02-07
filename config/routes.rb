Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      resources :sessions
      resources :user_games
    end
  end
end
