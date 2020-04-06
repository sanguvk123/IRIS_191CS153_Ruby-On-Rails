class User < ApplicationRecord
  has_secure_password
  has_many :products

  #validation
  validates :email, presence: true, uniqueness: true
end
