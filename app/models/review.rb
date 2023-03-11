class Review < ApplicationRecord
  belongs_to :list

  validates :content, presence: true, length: { minimum: 6 }
  validates :rating,  presence: true, numericality: { only_integer: true, in: (1..5) }
end
