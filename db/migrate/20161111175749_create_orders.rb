class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total, :precision => 2, :scale => 2
      t.belongs_to :user, index: true
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
