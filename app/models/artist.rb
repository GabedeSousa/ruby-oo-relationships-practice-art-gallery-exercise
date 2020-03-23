class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paintings|
      paintings.artist == self
    end
  end

  def galleries
    paintings.map do |paintings|
      paintings.gallery
    end
  end

  def cities
    galleries.map do |artist|
      artist.city
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

  def create_painting(title, price)
    Painting.new(price, title, self, gallery)
  end

  


end