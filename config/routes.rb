Rails.application.routes.draw do
  resources :user_games
  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
    end
  end
end
