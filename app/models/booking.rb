class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :items
end
