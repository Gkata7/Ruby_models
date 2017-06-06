class User < ActiveRecord::Base
  belongs_to :code
  validates :first_name, :last_name, presence: true
end
