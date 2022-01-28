require_relative '../lib/docking_station'
describe DockingStation do 
    it "responds to release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
    it "responds to docking a bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock)
    end
    #it "responds to see if a bike has been docked - ie if there are bikes docked" do
    #end  
    it "responds to a docking with one argument" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock).with(1).argument
    end  
    it "responds to the passing of a new bike into method dock_bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to include(bike)
    end
    it "responds to checking that a bike has been docked" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      expect (:dock_bikes.length > 0 == true)
    end
    it "Error if no bikes to release" do
      expect{subject.release_bike}.to raise_error("No bikes in Docking station")
    end
    it "Error if docking staion can't execpt anymore bikes" do
      bike = Bike.new
      20.times {subject.dock Bike.new}
      expect{subject.dock(Bike.new)}.to raise_error("Docking station is full")
    end
    it {is_expected.to respond_to(:capacity)}

    it "returns the capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    it "Does not realease a bike that is not working" do
      bike = Bike.new
      bike.report
      subject.dock(bike)
      subject.release_bike
      expect(bike.working?).to eq false
      expect(subject.release_bike).to eq nil
    end
    # it "Sets the capacity when creating a new docking station" do
    #   expect{subject.new(22)}.to eq(subject.capacity)
    # end
end
