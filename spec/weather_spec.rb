require 'weather'

describe Weather do
	
	let(:weather) {Weather.new}

	it 'should be able to be sunny' do
		weather.sunny
		expect(weather).to be_sunny
	end

	it 'should be able to be stormy' do
		weather.stormy
		expect(weather).to be_stormy
	end

end