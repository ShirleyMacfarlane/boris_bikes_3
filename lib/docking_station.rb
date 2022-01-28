class DockingStation
  attr_reader :dock_bikes
  def initialize
    @dock_bikes = []
  end
  def release_bike
    #bike = Bike.new
    fail "No bikes in Docking station" if @dock_bikes.length == 0
    return @dock_bikes.pop()
  end
  def dock_bike(bike)
    fail "Docking station is full" if  @dock_bikes.count >= 20
    return @dock_bikes << bike
  end
end