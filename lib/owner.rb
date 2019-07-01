require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :pets, :cat, :dog

  @@all = []
  @@dogs = []
  @@cats = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @cat = cat
    @dog = dog
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    @@cats
  end

  def dogs
    @@dogs
  end


  def pets(name)
    @@pets
  end


def buy_cat(name)
  @@cats << Cat.new(name, self)
end

def buy_dog(name)
  @@dogs << Dog.new(name, self)
  
end


    def walk_dogs
     Dog.new(name, self).mood = "happy"
     end

    


    def feed_cats
      @@cats.map {|cat| cat.mood = "happy"}

    end
 
    def sell_pets
    end

    def list_pets
    end
end