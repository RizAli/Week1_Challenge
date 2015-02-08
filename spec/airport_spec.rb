require 'airport'
require 'plane'
require 'weather'
 
describe Airport do
  let(:airport)   { Airport.new({capacity:20}) }
  let(:plane)     {Plane.new}
  let(:weather)   {double Weather.new}
  #allow(weather).to receive(:)
  
  context 'taking off and landing' do
    
    it 'allows plane to land' do
      expect(airport.full?).to eq false
      # expect(weather.stormy?).to eq false
      # expect(weather.sunny?).to eq true
    end

    it 'allows plane to take off' do
      # expect(weather.stormy?).to eq false
      # airport.takeoff(plane)
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
      plane.takeoff

    end
  end
  
end
  