class AddQuantityAndSubtotalToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_column :order_and_items, :quantity, :integer
    add_column :order_and_items, :subtotal, :decimal, {:precision=>4, :scale=>2}
  end
end
