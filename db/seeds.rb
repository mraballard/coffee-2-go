# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'items.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
Store.create(name: "The Daily Grind")
Menu.create(store_id: 1)

csv.each do |row|
  t = Item.new
  t.name = row['name']
  t.category = row['category']
  t.description = row['description']
  t.price = row['price']
  t.menu_id = 1

  t.save
  puts "#{t.errors}"
end

puts "There are now #{Item.count} rows in the items table"
