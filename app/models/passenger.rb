class Passenger

attr_reader :name

@@all = []

#Initializes a new instance of the Passenger class (Passenger.new("Gracie")) and shovels that instance into @@all array
def initialize(name)
  @name = name
  @@all << self
end

#Returns an array of all Passengers (Passenger.all)
def self.all
  @@all
end

#Returns an array of Ride instances that this person has been on
def rides
  Ride.all.select do |ride|
    ride.passenger == self
  end
end

#Returns an array of Driver instances that this person has rode with
def drivers
  #Ride.all.select {|ride| ride.driver if ride.passenger == self}
  rides.map do |ride|
    ride.driver
  end
end

#Returns the floating number that represents the total distance the passenger has travelled using the service
def total_distance
  distance = 0
  rides.each do |ride|
    distance += ride.distance
  end
  distance
end

#Returns an array of all Passengers who have travelled over 100 miles in total with the service
def self.premium_members
  self.all.select do |passenger|
    passenger.total_distance > 3
  end
end

end
