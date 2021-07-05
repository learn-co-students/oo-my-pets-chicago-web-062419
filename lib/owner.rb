require 'pry'
require_relative 'cat.rb'
require_relative 'dog.rb'
class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  # binding.pry
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end 

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end 
  
  def list_pets
    # binding.pry
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  def sell_pets
    all_pets = self.cats + self.dogs
    all_pets.each do |pet|
      pet.owner = nil
      pet.mood = "nervous"
    end
  end

  def say_species
    "I am a #{species}."
  end
  
  
  def self.all
    @@all
  end
  def self.count
    self.all.length
  end
  def self.reset_all
    self.all.clear
  end
end

owner_one = Owner.new("phil")
owner_one.buy_cat("garfield")
owner_two = Owner.new("george")
owner_two.buy_cat("toni")
owner_three = Owner.new("yolo")
owner_three.buy_cat("toniyoolo")
p Cat.all
p owner_three.cats



