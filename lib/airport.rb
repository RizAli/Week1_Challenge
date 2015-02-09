require_relative 'weather'

class Airport
	
	DEFAULT_CAPACITY = 10

	include Weather

	attr_reader :capacity
	attr_reader :planes
	
	def initialize(specs = {})
		@capacity = specs.fetch(:capacity, DEFAULT_CAPACITY)
		@planes = []
	end

	def plane_count
		planes.count
	end

	def land(plane)
		raise "Airport is full" if full?
		raise "can not land due to storm" if stormy
		@planes << plane
	end

	def takeoff(plane)
		raise "There is a storm brewing" if stormy
		@planes.delete(plane)
	end

	def full?
		plane_count == @capacity
	end

	def spaces?
		plane_count <= @capacity
	end

end
