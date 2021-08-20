class Item < ApplicationRecord

  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :size, :item_type, :color, :price, :title, :occasion, :brand, :description, presence: true
  validates :title, presence: true
  has_many_attached :photos
  has_one_attached :main_photo

  def available?(beginning_date, ending_date)
    range1 = (beginning_date..ending_date)
    self.bookings.each do |booking|
      range2 = booking.beginning_date..booking.ending_date
      return false if range1.overlaps?(range2)
    end
    return true
  end

end
