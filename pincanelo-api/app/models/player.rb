class Player < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :elo_rating, numericality: { greater_than_or_equal_to: 0 }
end
