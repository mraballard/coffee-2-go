class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.belongs_to :store, index: true
      t.timestamps
    end
  end
end
