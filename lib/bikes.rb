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
		fix!
	end

	def broken?
		fix! 
	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
		self
	end


end