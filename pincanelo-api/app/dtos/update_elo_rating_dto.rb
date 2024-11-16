class UpdateEloRatingDto < ApplicationDto
  attr_accessor :elo_rating
  validates :elo_rating, presence: true, numericality: { greater_than_or_equal_to: 0 }
end