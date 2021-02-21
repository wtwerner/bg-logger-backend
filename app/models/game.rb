class Game < ApplicationRecord
    belongs_to :user
    has_many :plays

    validates :bga_id, presence: true
    validates :date, presence: true
end
