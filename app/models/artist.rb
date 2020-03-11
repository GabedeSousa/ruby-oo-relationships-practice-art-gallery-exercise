require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |my_paintings|
      my_paintings.artist == self
    end
  end
  # binding.pry

  def galleries
    paintings.map do |my_gallery|
      my_gallery.gallery
      
    end
    # binding.pry
  end
  
  

  def cities
    galleries.map do |painting|
      painting.city
    end
  end

  def self.total_experience
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end

  def create_painting
     Painting.new(title, price, self ,gallery)
  end


 end
