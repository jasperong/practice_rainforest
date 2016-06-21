class User < ActiveRecord::Base
  has_secure_password
  validates :username, :email, :password, presence: true

  has_many :reviews
  has_many :products, through: :reviews
end
