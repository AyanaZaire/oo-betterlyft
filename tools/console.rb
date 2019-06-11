require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

gracie = Passenger.new('gracie')
ayana = Passenger.new('ayana')
graham = Passenger.new('graham')
michelle = Passenger.new('michelle')


tony = Driver.new('tony')
kevin = Driver.new('kevin')
annie = Driver.new('annie')


ride1 = Ride.new(tony, ayana, 3.2)
ride2 = Ride.new(kevin, graham, 1.1)
ride3 = Ride.new(tony, gracie, 3.9)
ride4 = Ride.new(annie, michelle, 6.8)
ride5 = Ride.new(tony, ayana, 3.2)
ride6 = Ride.new(kevin, gracie, 1.1)
ride7 = Ride.new(tony, gracie, 3.9)
ride8 = Ride.new(annie, michelle, 6.8)

binding.pry
