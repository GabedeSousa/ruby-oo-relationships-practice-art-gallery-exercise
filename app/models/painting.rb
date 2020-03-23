class Painting
  
  attr_reader :price, :title, :artist, :gallery

  @@all = []

  def initialize(price, title, artist, gallery)
    @price = price
    @title = title 
    @artist = artist
    @gallery = gallery  
    @@all << self
  end


  def self.total_price
    self.all.reduce(0) do |sum, paintings|
      sum + paintings.price
    end
  end

  def self.all
    @@all
  end


end