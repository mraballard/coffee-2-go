class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :price
      t.references :menu, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
