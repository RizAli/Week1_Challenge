# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"
require 'plane'	

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	expect(plane.flying?).to eq true
  end
  
  it 'has a flying status when in the air' do
  	expect(plane.takeoff).to eq true
  end
  
  it 'can take off' do
  	plane.land
  	expect(plane.flying?).to eq false
  end
  
  it 'changes its status to flying after taking off' do
  	plane.land
  	plane.takeoff
  	expect(plane.flying?).to eq true
  end
end
 
