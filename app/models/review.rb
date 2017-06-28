class Review < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 160 }
  validates :user_id, presence: true
  validates :movie_id, presence: true

end
