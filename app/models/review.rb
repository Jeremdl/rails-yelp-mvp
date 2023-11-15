class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :content, presence: true
  validates :rating, numericality: {only_integer: true}, inclusion: { in: (0..5), message: "%{value} n'est pas une valeur valide" }

end
