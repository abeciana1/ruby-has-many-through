require 'pry'

class MenuItem
    attr_accessor :recipe, :restaurant

    @@all = []

    def initialize(recipe, restaurant=nil)
        @recipe = recipe
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end
    
end
