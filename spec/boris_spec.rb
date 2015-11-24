require_relative '../lib/docking_station'
require_relative '../lib/bike'

describe DockingStation do
    it { is_expected.to respond_to :release_bike}
    it 'creates a new bike when you release the bike' do
    	station = DockingStation.new
    	expect(station.release_bike.working?).to eq(true)
    end
end

