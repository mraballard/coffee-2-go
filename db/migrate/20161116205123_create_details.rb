class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.integer :quantity
      t.decimal :subtotal, {:precision=>8, :scale=>2}
      t.belongs_to :order
      t.belongs_to :item
    end
  end
end
