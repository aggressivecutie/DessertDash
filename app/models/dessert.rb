class Dessert < ApplicationRecord
  belongs_to :dealer

  validates :dealer_id, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
