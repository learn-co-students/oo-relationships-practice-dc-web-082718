class Listing
  attr_accessor :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    # listing_trips = Trip.all.select do |trip|
    #   trip.listing == self
    # end
    listing_trips = self.trips

    listing_trips.map do |trip|
      trip.guest
    end
  end

  def trips
    listing_trips = Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    self.trips.length
  end

  def self.find_all_by_city(city)
    @@all.map do |listing|
      if listing.city == city
         listing
      end
    end.compact
  end

  def self.most_popular
    most_popular = 0
    ans = ""
    @@all.each do |listing|
      if listing.trip_count > most_popular
        most_popular = listing.trip_count
        ans = listing
      end
    end
    ans
  end

end
