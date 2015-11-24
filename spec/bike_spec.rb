require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }
  it 'checks docking a bike at the station' do
    bike1 = Bike.new
    expect(bike1.docking).to eq(true)
  end
  it 'checks not docking a bike at the station' do
    bike = Bike.new
    expect($docked).to eq(false)
  end
end
