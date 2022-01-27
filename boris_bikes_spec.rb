describe DockingStation do 
    it "should release a bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
end
