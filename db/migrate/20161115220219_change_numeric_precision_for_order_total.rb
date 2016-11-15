class ChangeNumericPrecisionForOrderTotal < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :total, :decimal, {:precision => 8, :scale => 2}
    change_column :order_and_items, :subtotal, :decimal, {:precision => 8, :scale => 2}
  end
end
