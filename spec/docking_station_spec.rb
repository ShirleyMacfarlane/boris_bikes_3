require_relative '../lib/docking_station'
describe DockingStation do 
     it "responds to release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
   end
  #  it "responds to release_bike with a working? bike" do
      # Need to put a bike in now as we don't always return a bike chapter Step 12
  #    bike = Bike.new
     # bikessubject.dock_bike(bike)
      #
     # bike = subject.release_bike
    #  expect(bike).to respond_to(:working?).to eq true
   # end
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
      bike = Bike.new
      expect(subject.dock_bike(bike)).to include(bike)
    end
    it "responds to checking that a bike has been docked" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock_bike(bike)
      expect (:dock_bikes.length > 0 == true)
    end
    it "Error if no bikes to release" do
      expect{subject.release_bike}.to raise_error("No bikes in Docking station")
    end
    it "Error if docking staion can't execpt anymore bikes" do
      bike = Bike.new
      20.times {subject.dock_bike Bike.new}
     # bike = Bike.new
     # subject.dock_bike(bike)
      expect{subject.dock_bike(Bike.new)}.to raise_error("Docking station is full")
    end
end
