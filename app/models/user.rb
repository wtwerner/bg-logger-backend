class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    has_many :games
    has_many :plays, through: :games
    has_many :friendships, :foreign_key => "user_id", 
      :class_name => "Friendship"
    has_many :friends, through: :friendships
end
