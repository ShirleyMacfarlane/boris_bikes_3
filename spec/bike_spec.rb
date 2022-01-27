require 'bike'
describe Bike do
    # it "respond to working?" do
    # bike = Bike.new 
    # expect(bike).to respond_to(:working?)
  it { is_expected.to respond_to :working? }
    # end
end

# it { is_expected.to respond_to :working? }
