require "pry"

class Recipe

    attr_accessor :description
    attr_reader :name

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self.name
    end

    def new_menu_item(restaurant)
        MenuItem.new(self, restaurant)
    end

    def restaurants
        MenuItem.all.select do |restaurant|
            restaurant.recipe.name == self
        end
    end

    def self.all
        @@all
    end

end