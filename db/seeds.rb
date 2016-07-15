# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: "Condiments & Sauces")
Category.create(name: "Carbohydrates")
Category.create(name: "Dairy")
Category.create(name: "Drinks")
Category.create(name: "Fruits")
Category.create(name: "Proteins")
Category.create(name: "Vegetables")
Category.create(name: "Other")

24.times do
  Product.create(name: Faker::Beer.name, expiration: Faker::Date.forward(30), category_id: Faker::Number.between(1, 8))
end
