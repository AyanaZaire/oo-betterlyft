class Driver

  attr_accessor :name

  @@all = []

  #Initializes a new instance of the Driver class (Driver.new("Tony")) and shovels that instance into @@all array
  def initialize(name)
    @name = name
    @@all << self
  end

  #Returns an array of all Drivers (Driver.all)
  def self.all
    @@all
  end

  #Returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).
  def passenger_names
    rides.map do |ride|
     if ride.driver == self
       ride.passenger.name
     end
   end.uniq
  end

  #Returns an array of all Rides a driver has made
  def rides
    Ride.all.select do |ride|
     ride.driver == self
   end
  end

  #using in Driver.mileage_cap
  def total_distance
  distance = 0
  rides.each do |ride|
    if ride.driver == self
      distance += ride.distance
    end
  end
  distance
end

  #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
  def self.mileage_cap(distance)
    self.all.select do |driver|
     driver.total_distance > distance
   end
  end

end
