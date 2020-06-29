require 'pry'

class Restaurant

    attr_accessor :name, :star_rating, :owner, :recipe

    @@all = []

    def initialize(name, star_rating, owner)
        @name = name
        @star_rating = star_rating
        @@all << self
        @owner = owner
    end

    def new_menu_item(recipe)
        MenuItem.new(recipe, self)
    end

    def recipes
        MenuItem.all.select do |recipe|
            recipe.restaurant.name == self
        end
    end

    def self.all
        @@all
    end
end