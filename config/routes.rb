Rails.application.routes.draw do
  resources :friends
  post "/api/v1/login", to: "api/v1/sessions#create"
  post "/api/v1/signup", to: "api/v1/users#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  delete "/api/v1/games/:bga_id", to: "api/v1/games#destroy"
  patch "/api/v1/games/:bga_id", to: "api/v1/games#update"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      resources :plays
    end
  end
end
