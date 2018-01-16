class Menu < ApplicationRecord
  validates_presence_of :name
  has_many :product_categories
  belongs_to :restaurant
end
