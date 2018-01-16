class ProductCategory < ApplicationRecord
  validates :name, presence: true
  belongs_to :restaurant
  has_many :products
end
