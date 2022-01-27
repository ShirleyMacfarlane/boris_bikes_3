require './lib/docking_station'
describe DockingStation do 
    it "responds to release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
    it "responds to release_bike with a working? bike" do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      expect(bike).to respond_to(:working?)
    end
    it "responds to docking a bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock_bike)
    end
    #it "responds to see if a bike has been docked - ie if there are bikes docked" do
    #end      
end
