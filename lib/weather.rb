class Weather

	def initialize
		@stormy = false
	end
	
	def sunny?
		!@stormy
	end

	def stormy?
		@stormy
	end

	def sunny
		@stormy = false
	end

	def stormy
		@stormy = true
	end

end
