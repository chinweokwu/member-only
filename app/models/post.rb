class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 500 }
  belongs_to :user
end
