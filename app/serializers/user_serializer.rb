class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :sessions, :user_games
end
