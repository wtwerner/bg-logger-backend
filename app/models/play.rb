class Play < ApplicationRecord
    belongs_to :game

    validates :bga_id, presence: true
    validates :date, presence: true
end
