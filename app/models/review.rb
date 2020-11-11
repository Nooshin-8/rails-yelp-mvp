class Review < ApplicationRecord

  # review must belong to a restaurant.
  belongs_to :restaurant

  # review must have content and a rating.
  validates :content, presence: true
  validates :rating, presence: true

  # review’s rating must be a number between 0 and 5.
  validates :rating, numericality: true
  validates :rating, inclusion: { in: 0..5 }
end

  # :greater_than_or_equal_to - Specifies the value must be
  # greater than or equal to the supplied value.

  # :less_than_or_equal_to - Specifies the value must be
  # less than or equal to the supplied value

  # The default error message for :only_integer is "must be an integer".
