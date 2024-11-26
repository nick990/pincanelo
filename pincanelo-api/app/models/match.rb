class Match < ApplicationRecord
  validates :datetime, presence: true
  validates :status, presence: true
  enum status: { scheduled: 'scheduled', ongoing: 'ongoing', finished: 'finished' }
end
