class User < ApplicationRecord
  has_many :reviews
  has_many :movies
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness:true

end
