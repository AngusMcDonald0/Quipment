class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment
  enum :status, { pending: 0, accepted: 1, rejected: 2 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
