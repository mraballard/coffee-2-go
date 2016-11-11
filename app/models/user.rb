class User < ApplicationRecord
  has_many :orders
  has_many :stores, through: :orders
  has_secure_password
end
