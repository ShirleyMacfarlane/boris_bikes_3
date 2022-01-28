require_relative  "../lib/bike"
describe Bike do
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :report }
  it "Report to return that a bike is not working" do
    subject.report
    expect(subject.working?).to eq false
  end
end

