class Order < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :details, through: :items
  has_and_belongs_to_many :items
end
