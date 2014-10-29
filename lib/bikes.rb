=begin
Classes:
	Bike
	Person
	Van
	Garage
	Docking Station

=end





class Bike

@broken 

	def initialize
		@broken=false
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
		self
	end


end