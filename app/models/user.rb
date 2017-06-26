class User < ApplicationRecord
  has_many :review
  has_secure_password
end
