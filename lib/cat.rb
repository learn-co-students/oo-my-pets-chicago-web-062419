class Cat
    attr_reader :name
    attr_accessor :mood, :owner

    @@all = []
  
    def initialize(name, owner)
      @name = name
      @owner = owner
      @mood = "nervous"

    end

    def self.all
      @@all
    end
end
