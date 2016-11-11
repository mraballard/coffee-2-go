class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :user
  belongs_to :store
end
