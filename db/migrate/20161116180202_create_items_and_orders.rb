class CreateItemsAndOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total, :precision => 8, :scale => 2
      t.belongs_to :user
      t.belongs_to :store

      t.timestamps
    end
    create_table :items_orders do |t|
      t.integer :order_id
      t.integer :item_id
    end

    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :price
      t.belongs_to :menu

      t.timestamps
    end
  end
end
