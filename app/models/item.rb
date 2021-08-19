class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :size, :item_type, :color, :price, :title, :occasion, :brand, :description, presence: true
  validates :title, uniqueness: true
  has_many_attached :photos
end
