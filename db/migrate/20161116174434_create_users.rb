class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname, presence: true
      t.string :lastname, presence: true
      t.string :username, presence: true, uniqueness: true

      t.timestamps
    end
  end
end
