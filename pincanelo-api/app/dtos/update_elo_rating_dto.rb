class UpdateEloRatingDto<ApplicationDto
  attr_accesstor :elo_rating
  validates :elo_rating, numericality: { greater_than_or_equal_to: 0 }
end