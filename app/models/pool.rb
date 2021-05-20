class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
end
