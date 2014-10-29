#can be createdv==< assume works
#hold the bike ... yaaaay!!
#release the bike .... Wooohooo!
#return the bike .... 


require "docking_station.rb"

	describe "docking station:" do

	let(:new_dock){Docking_station.new} 
		context "is" do
		
			it "holding the bike" do  
				#new_dock = Docking_station.new
				expect(new_dock.holding_bike?).to be true
			end			

			it "release the bike" do   
				#new_dock = Docking_station.new
				expect(new_dock.release_the_bike!).to be false
			end

			it "return the bike" do
				#new_dock = Docking_station.new
				expect(new_dock.return_the_bike).to be true
			end




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
		
		
