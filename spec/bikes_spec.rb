require 'bikes.rb' 

describe Bike do


let(:bike) {Bike.new}


=begin
before(:each) do
	broken_bike.break!
end
=end
	it "is not broken when created" do
		#new_bike = Bike.new
		#expect(new_bike).not_to be_broken?
		expect(bike.broken?). to be false
	end
	

	it 'can break' do
		bike.break!
		expect(bike). to be_broken
	end	

	it 'can be fixed' do
		broken_bike = Bike.new
		broken_bike.break!
		broken_bike.fix!
		expect(broken_bike).not_to be_broken
	end

end



# can break
# can be fixed
# can be ridden