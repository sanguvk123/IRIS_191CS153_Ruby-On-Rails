class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  belongs_to :user
  validates :claim, presence: true
  validates :starting_bid, presence: true

end
