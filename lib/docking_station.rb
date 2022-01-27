class DockingStation
  attr_reader :dock_bikes
  def initialize
    @dock_bikes = []
  end
  def release_bike
    #bike = Bike.new
    fail "No bikes in Docking station" unless @dock_bikes.length > 0
    return @dock_bikes[@dock_bikes.length - 1]
  end
  def dock_bike(bike)
    @dock_bikes << bike
    bike
  end
end