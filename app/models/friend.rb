class Friend < ApplicationRecord
    belongs_to :user
    has_many :friends_games
    has_many :games, through: :friends_games
end
