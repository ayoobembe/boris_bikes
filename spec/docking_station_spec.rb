#can be createdv==< assume works
#hold the bike ... yaaaay!!
#release the bike .... Wooohooo!
#return the bike .... 
#capacity needs to be stated
#capacity needs to decrease when bike is released
#capacity needs to increase when bike is returned

require "docking_station.rb"

	describe Docking_station do
		
		let(:bike){Bike.new}
		let(:station){Docking_station.new(:capacity=>20)}

			def fill_station(station)
				20.times{ station.dock(Bike.new)}
			end

			it "should accept a bike" do
				bike = Bike.new
				station = Docking_station.new
				expect(station.bike_count). to eq(0)
				station.dock(bike)
				expect(station.bike_count).to eq(1)
			end 

			it "should release a bike" do
				station.dock(bike)
				station.release(bike)
				expect(station.bike_count).to eq(0)
			end

			it "should know when it's full" do
				expect(station).not_to be_full
				20.times {station.dock(Bike.new)}
				expect(station).to be_full
			end

			it "should not accept a bike if it's full" do
				fill_station station 
				expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
			end
		
	end


=begin
it should accept a bike
it should release a bike
it should know when its full
it should not accept a bike if its full
if should provide the list of the available bikes

ADVISED TO USE DOUBLES AS FREQUENTLY AS POSSIBLE


Example:
it "should provide the list of the availbale bikes" do
		working_bike = double :bike, broken?: false
		allow(working_bike).to receive(:broken?).and_return(false)
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.available.bikes).to eq([working_bike])
=end
		
		
