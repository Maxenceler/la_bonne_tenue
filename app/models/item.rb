class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :size, :item_type, :color, :price, :title, :occasion, :brand, :description, presence: true
  validates :title, uniqueness: true
  has_many_attached :photos
  has_one_attached :main_photo

  ITEM_TYPES = {"robe" => "Robes", "mv" => "Manteaux & Vestes", "tb" => "Tops & Blouses", "pj" => "Pantalons & Jeans", "js" => "Jupes & Shorts", "sa" => "Sacs & Accessoires"}
end
