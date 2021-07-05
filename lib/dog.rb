class Dog
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

# dog_one = Dog.new("maru")
# p dog_one.name
# p dog_one.mood
# dog_one.mood = "angry"
# p dog_one.mood
