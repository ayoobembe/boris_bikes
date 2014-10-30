require_relative 'bike_container'


class Docking_station

#gives us all the methods that used to be in this class
	include BikeContainer
	
	DEFAULT_CAPACITY = 10

	def initialize(options={})
		#self.capacity is calling the capacity=() method
		#(note the equals sign) defined in BikeContainer
		#capacity (the second argument to fetch()) is calling
		#the capacity() method in BikeContainer
		self.capacity = options.fetch(:capacity, capacity)
	end
end



# 	DEFAULT_CAPACITY=10

# 	def initialize(options = {})
# 		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
# 		@bikes = []
# 	end

# 	def bike_count
# 		@bikes.count 
# 	end

# 	def dock(bike)
# 		raise "Station is full" if full?
# 		@bikes << bike 
# 	end

# 	def release(bike)
# 		@bikes.delete(bike)
# 	end

# 	def full?
# 		bike_count == @capacity
# 	end


# 	def available_bikes
# 		@bikes.reject {|bike| bike.broken?}
# 	end

# end


