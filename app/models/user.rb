class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_destroy :log_before_destory
  after_destroy :log_after_destory

  has_many :posts
  has_many :comments
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :User
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :Post

  validates :name, presence: true, length: {minimum: 2, maximum: 20}, uniqueness: true

  private
  
  def log_before_destroy
    Rails.logger.info "User #{@name} has prepare to delete"
  end
  def log_after_destroy
    Rails.logger.info "User #{@name} has delete"
  end
end
