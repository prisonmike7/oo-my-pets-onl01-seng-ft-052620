class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
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

  def cats
    cat_array = []
    Cat.all.each do |cat|
      if cat.owner == self
        cat_array << cat
      end
    end
    cat_array
  end

  def dogs
    dog_array = []
    Dog.all.each do |dog|
      if dog.owner == self
        dog_array << dog
      end
    end
    dog_array
  end


end
