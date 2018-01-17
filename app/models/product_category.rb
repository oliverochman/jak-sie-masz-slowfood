class ProductCategory < ApplicationRecord
  validates :name, presence: true
  belongs_to :restaurant
  belongs_to :menu
  has_many :products
end
