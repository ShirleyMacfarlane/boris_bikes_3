require './lib/docking_station'
describe DockingStation do 
     it "responds to release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
   end
    it "responds to release_bike with a working? bike" do
      docking_station = DockingStation.new
      # Need to put a bike in now as we don't always return a bike chapter Step 12
      bike = Bike.new
      docking_station.dock_bike(bike)
      #
      bike = docking_station.release_bike
      expect(bike).to respond_to(:working?)
    end
    it "responds to docking a bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock_bike)
    end
    #it "responds to see if a bike has been docked - ie if there are bikes docked" do
    #end  
    it "responds to a docking with one argument" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock_bike).with(1).argument
    end  
    it "responds to the passing of a new bike into method dock_bike" do
      docking_station = DockingStation.new
      bike = Bike.new
      expect(docking_station.dock_bike(bike)).to eq bike
    end
    it "responds to checking that a bike has been docked" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock_bike(bike)
      expect (:dock_bikes.length > 0 == true)
    end
    it "Error if no bikes to release" do
      docking_station = DockingStation.new
      expect{docking_station.release_bike}.to raise_error("No bikes in Docking station")
    end
end
