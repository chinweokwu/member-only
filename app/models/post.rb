class Post < ApplicationRecord
    validates :post,    presence: true, length: { maximum: 500 }
    belongs_to :user
end
