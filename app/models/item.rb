class Item < ApplicationRecord
  has_many :bookings
  has_many :users
  validates :size, :type, :color, :price, :title, :occasion, :brand, :description, presence: true
  validates :title, uniqueness: true
end
