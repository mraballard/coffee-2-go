class Item < ApplicationRecord
  belongs_to :menu
  has_many :details, through: :orders
  has_and_belongs_to_many :orders
end
