# require relative './dog.rb'
# require relative './cat.rb'
require 'pry'

class Owner

  attr_accessor :cats, :dogs, :pets
  attr_reader :owner, :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = []
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    @cats << cat
    @pets << cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    @dogs << dog
    @pets << dog
  end

  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end

  def sell_pets
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "nervous"
        cat.owner = nil
      end
    end
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "nervous"
        dog.owner = nil
      end
    end
  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

end