class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :beginning_date, presence: true
  validates :ending_date, presence: true

end
