class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
  end

  def species
    @species
  end

  def say_species
    puts "I am a #{human}"
  end

end
