class User < ApplicationRecord
  has_secure_password
  
  has_many :ideas

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :location, presence: true
end
