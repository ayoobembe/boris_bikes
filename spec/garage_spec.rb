require "./lib/garage.rb"

describe Garage do  
	let(:garage){Garage.new(:capacity=>180)}

	it "should allow setting default capacity on initializing" do
		expect(garage.capacity).to eq(180)
	end

end