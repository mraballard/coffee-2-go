class Menu < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :store
end
