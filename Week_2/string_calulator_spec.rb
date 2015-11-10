require_relative("string_calculator.rb")
RSpec.describe "String calculator" do 
	it "returns 0 for the empty string" do 
		calc = Stringcalculator.new

		expect(calc.add("") ).to eq( 0 )
	end
	it "returns 6 for '6'" do 
		calc = Stringcalculator.new

		expect(calc.add("6") ).to eq( 6 )
	end
	it "returns 9 for '9'" do 
		calc = Stringcalculator.new

		expect(calc.add("9") ).to eq( 9 )
	end
	it "returns 13 for '6 & 7'" do 
		calc = Stringcalculator.new

		expect(calc.add("6,	7") ).to eq( 13 )
	end
	it "returns 17 for '8 & 9'" do 
		calc = Stringcalculator.new

		expect(calc.add("8,9") ).to eq( 17 )
	end
end