require 'pry'

class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artist
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_name
    gallery.map do |painting|
      painting.name
    end
  end

  def most_expensive_painting
    painting.max_by do |painting|
      painting.price
    end
  end

end
