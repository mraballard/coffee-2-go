class Store < ApplicationRecord
  has_one :menu, dependent: :destroy
  has_many :users, through: :orders
end
