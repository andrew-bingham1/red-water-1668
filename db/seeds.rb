# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@chef_1 = Chef.create!(name: "Gordon Ramsay")
@dish_1 = @chef_1.dishes.create!(name: "Mac and Cheese", description: "Macaroni noodles with cheese")
@ingredient_1 = Ingredient.create!(name: "Macaroni", calories: 200)
@ingredient_2 = Ingredient.create!(name: "Cheese", calories: 400)
@ingredient_3 = Ingredient.create!(name: "Bacon", calories: 100)
@dish_ingredients_1 = DishIngredient.create!(dish: @dish_1, ingredient: @ingredient_1)
@dish_ingredients_2 = DishIngredient.create!(dish: @dish_1, ingredient: @ingredient_2)
