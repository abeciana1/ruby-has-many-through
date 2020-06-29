require 'pry'
require_relative './MenuItem.rb'
require_relative './recipe.rb'
require_relative './restaurant.rb'


puts mcds = Restaurant.new("McDonalds", 3, "Ronald")

puts fish = Recipe.new("fish", "panko")

fish.new_menu_item(mcds)