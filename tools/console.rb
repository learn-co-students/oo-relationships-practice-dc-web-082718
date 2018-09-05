require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Pry.start

seattle = Listing.new("Seattle")
seattle2 = Listing.new("Seattle")
london = Listing.new("London")
fullerton = Listing.new("Fullerton")
brian = Guest.new("Brian")
brian2 = Guest.new("Brian")
joon = Guest.new("Joon")
dan = Guest.new("Dan")

trip1 = Trip.new(seattle, dan)
trip2 = Trip.new(london, dan)
trip3 = Trip.new(fullerton, brian)
trip4 = Trip.new(seattle, joon)
trip5 = Trip.new(seattle, brian)

puts brian.trip_count
binding.pry
puts "helloGOODBYE"
