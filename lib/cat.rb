class Cat
  attr_reader :name, :owner

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
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

end