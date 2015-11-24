require_relative '../lib/docking_station'
require_relative '../lib/bike'

describe DockingStation do
    it { is_expected.to respond_to :release_bike}
    it 'creates a new bike when you release the bike' do
    	station = DockingStation.new
    	expect(station.release_bike.working?).to eq(true)
    end
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike)}
    it 'docks something' do
    	bike1 = Bike.new
    	expect(subject.dock(bike1)).to eq(bike1)
    end
    it 'returns docked bike' do
    	bike1 = Bike.new
    	subject.dock(bike1)
    	expect(subject.bike).to eq(bike1)
    end
    it { is_expected{subject.release_bike}.to raise_error if @released == 0 }
    it 'Cannot rent bike, no bikes remain' do
      8.times { subject.release_bike }
      expect{subject.release_bike}.to raise_error('No bikes remaining')
    end
end
