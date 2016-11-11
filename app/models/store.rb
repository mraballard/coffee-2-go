class Store < ApplicationRecord
  has_many :users, through: :orders
  has_one :menu, dependent: :destroy
end
