class DockingStation
  attr_reader :dock_bikes
  def initialize
    @dock_bikes = []
  end
  def release_bike
    bike = Bike.new
  end
  def dock_bike(bike)
    @dock_bikes << bike
    bike
  end
  # @dock_bike
  # def dock_bike_num
  #   @dock_bikes.length
  # end
end