class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 1}
  validates :body, presence: true, length: { minimum: 5}
  has_many :comments, as: :commentable
  has_many :commentators, through: :comments, source: :user
end
