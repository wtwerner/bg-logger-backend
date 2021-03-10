class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :games, :plays, :friends
end
