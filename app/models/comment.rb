class Comment < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :post
  belongs_to :commentable, polymorphic: true
  validates :body, presence: true, length: {minimum: 3}
  has_many :posts
end
