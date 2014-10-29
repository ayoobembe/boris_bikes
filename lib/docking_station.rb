class Docking_station

	def initialize
		true
	end

	def holding_bike?
		@holding = true
	end

	def release_the_bike!
		@holding = false
	end

	def return_the_bike
		@holding = true
	end


end

