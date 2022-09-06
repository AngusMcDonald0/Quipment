class Equipment < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  # has_many_attached :photo
end
