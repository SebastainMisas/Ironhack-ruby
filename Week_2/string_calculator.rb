system("cls")
class Stringcalculator
	def add(number)
		if number == ""
			return 0
		
		else
			new_array = number.split("")
			if new_array.include?(",")
				new_array.delete(",")
			end
			total = 0 
			new_array.each do |number|
				total += number.to_i  
			end
			return total
		end
	end
end

string1 = "3,7"



new_calc = Stringcalculator.new
puts new_calc.add(string1)




