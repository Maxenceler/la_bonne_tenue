class Booking < ApplicationRecord
  validate :booking_cant_overlap_another_one
  belongs_to :user
  belongs_to :item
  validates :beginning_date, presence: true
  validates :ending_date, presence: true

  private

   def booking_cant_overlap_another_one
    unless item.available?(beginning_date, ending_date)
      errors.add(:beginning_date, "Item already booked")
    end
  end
end
