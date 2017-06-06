class Code < ActiveRecord::Base
  has_many :users
  validates :name, :city, :state, presence: true
  validates :state, length: {is: 2 }
end
