require 'airport'
require 'plane'
require 'weather'
 
describe Airport do
  let(:airport)   { Airport.new }
  let(:plane)     {double :plane}
  # allow(airport).to receive(:stormy).and_return(false)
  # allow(airport).to receive(:stormy) {false}


  context 'taking off and landing' do
    # before(:each) {allow(airport).to receive(:stormy).and_return(false)}

    it 'allows plane to land' do
      allow(airport).to receive(:stormy).and_return(false)
      airport.land(plane)
      expect(airport.plane_count).to eq(1) 
    end

    it 'allows plane to take off' do
      allow(airport).to receive(:stormy).and_return(false)
      airport.takeoff(plane)
      expect(airport.plane_count).to eq(0)
     
    end
  end
  
    context 'traffic control' do

      it 'a plane cannot land if the airport is full' do
        allow(airport).to receive(:stormy).and_return(false)
        10.times  {airport.land(plane)}
        # puts airport.plane_count
        expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, 'Airport is full')
      end
    end


    context 'weather conditions' do
      
      it 'a plane cannot take off when there is a storm brewing' do
        allow(airport).to receive(:stormy).and_return(true)
        expect(lambda { airport.takeoff(plane) }).to raise_error(RuntimeError, 'There is a storm brewing')
      end
    
      it 'a plane cannot land in the middle of a storm' do
        allow(airport).to receive(:stormy).and_return(true)
        expect(lambda { airport.land(plane)}).to raise_error(RuntimeError, 'can not land due to storm')

      end

    end



end
  