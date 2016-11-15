class Store < ApplicationRecord
  has_one :menu
  has_many :users, through: :orders
end
