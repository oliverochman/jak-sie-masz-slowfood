class Product < ApplicationRecord
  validates :name, :description, :price, presence: true
  belongs_to :product_category
  belongs_to :restaurant
end
