class Ride

  attr_accessor :passenger, :driver, :distance

  @@all = []

  #Initializes a new instance of the Ride class (Ride.new(tony, gracie, 5.2)) and shovels that instance into @@all array
  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all<< self
  end

  #Returns an array of all Rides (Ride.all)
  def self.all
    @@all
  end

  #Returns the average distance across ALL rides
  def self.average_distance
    @@all.inject(0.0) { |sum, ride| sum += ride.distance }/@@all.size
  end

end
