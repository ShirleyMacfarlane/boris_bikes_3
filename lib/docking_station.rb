class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :dock_bikes, :capacity

  def initialize
    @dock_bikes = []
    @capacity = DEFAULT_CAPACITY
  end
  def release_bike
    fail "No bikes in Docking station" if empty?
    return @dock_bikes.pop()
  end
  def dock(bike)
    fail "Docking station is full" if full?
    return @dock_bikes << bike
  end

  private

  def full?
    @dock_bikes.count >= DEFAULT_CAPACITY ? true : false
  end
  
  def empty?
    @dock_bikes.length == 0 ? true : false
  end
end