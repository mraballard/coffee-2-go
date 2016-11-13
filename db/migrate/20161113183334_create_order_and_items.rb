class CreateOrderAndItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_and_items do |t|
      t.belongs_to :order, index: true
      t.belongs_to :item, index: true
    end
  end
end
