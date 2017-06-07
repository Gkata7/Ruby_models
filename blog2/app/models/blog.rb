class Blog < ActiveRecord::Base
  has_many :owners
  has many :posts
  has_many :users, through: :owners
  has_many :user_posts, through: :posts, source: :users
  validates :name, :description, presence: true
end
