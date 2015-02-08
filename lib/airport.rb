class Airport
	DEFAULT_CAPACITY = 10

	attr_reader :capacity
	attr_reader :planes
	
	def initialize(specs = {})
		@capacity = specs.fetch(:capacity, capacity)
		@planes = []
	end

	def plane_count
		planes.count
	end

	def land(plane)
		raise "Airport is full" if full?
		@planes << plane
	end

	def takeoff(plane)
		@planes.delete(plane)
	end

	def full?
		plane_count == @capacity
	end

	def spaces?
		plane_count <= @capacity
	end

end
