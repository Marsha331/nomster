class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :images

  geocoded_by :address
  after_validation :geocode 

  validates :name, :address, :description, presence: true
  validates :name, length: { minimum: 2 }

  mount_uploader :image, ImageUploader
end
