class Review < ApplicationRecord
  belongs_to :restaurant

  # validates  :restaurant, presence: true

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }
  # validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5

end



# [X] A review must belong to a restaurant. // do not need has_one because I already belongs_to
# [X] A review must have a content.
# [X] A review must have a rating.
# [X] A review’s rating must be a number between 0 and 5.
# [X] A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
