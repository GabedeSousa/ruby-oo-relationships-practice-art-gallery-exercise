require_relative '../config/environment.rb'







a1 = Artist.new("Picasso", 2)
a2 = Artist.new("Monet", 20)
a3 = Artist.new("Ross", 40)
a4 = Artist.new("Mike", 7)

g1 = Gallery.new("Fancy", "New York")
g2 = Gallery.new("Classy", "New Orleans")
g3 = Gallery.new("The Louvre", "Paris")
g4 = Gallery.new("Night Gallery", "Seattle")


p1 = Painting.new( 100000, "Flowers" , a1, g1)
p2 = Painting.new(15000, "Book", a1, g2)
p3 = Painting.new( 13000, "Ducks", a2, g3)
p4 = Painting.new(1200000, "Boat", a2, g4)

 binding.pry



puts "Bob Ross rules."
