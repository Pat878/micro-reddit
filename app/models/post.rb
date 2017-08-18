class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :user_id, presence: true
    validates :title, presence: true, length: { maximum: 200 }
    validates :body, presence: true
end
