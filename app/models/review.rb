class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, :restaurant, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }

end
