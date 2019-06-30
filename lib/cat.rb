class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.count
    self.all.count
  end

end

# cat_one = Cat.new("maru")
# p cat_one.name
# p cat_one.mood
# cat_one.mood = "angry"
# p cat_one.mood
