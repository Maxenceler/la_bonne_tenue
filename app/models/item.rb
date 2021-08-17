class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :size, :type, :color, :price, :title, :occasion, :brand, :description, presence: true
  validates :title, uniqueness: true
end
