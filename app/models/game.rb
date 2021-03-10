class Game < ApplicationRecord
    belongs_to :user
    has_many :plays
    has_many :friends_games
end
