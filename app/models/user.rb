class User < ApplicationRecord
    has_secure_password
    has_many :games
    has_many :plays, through: :games
    has_many :friends
end
