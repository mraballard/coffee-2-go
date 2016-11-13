class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :price
      t.belongs_to :menu, index: true

      t.timestamps
    end
  end
end
