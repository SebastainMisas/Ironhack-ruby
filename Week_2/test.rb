
class Stringcalculator
	def add(number)
		if number == ""
			return 0
		
		else
			new_array = number.split("")
			first = new_array[0].to_i
			second = new_array[2].to_i
			calculated = first + second
			return calculated
		end
	end
end


my_calculator = Stringcalculator.new


# result = my_calculator.add("")

# if result != 0
# 	puts "Wrong result for empty string"
# 	puts "Should be #{result}"
# else 
# 	puts "Correct result for empty string"
# 	puts "Result = #{result}"
# end
# result2 = my_calculator.add("6")

# if result2 != 6
# 	puts "Wrong result for 6"
# 	puts "Should be #{result2}"
# else
# 	puts "Correct result for 6"
# 	puts "Result = #{result2}"
# end


# result3 = my_calculator.add("9")

# if result3 != 9
# 	puts "Wrong result for 9"
# 	puts "Should be #{result3}"
# else
# 	puts "Correct result for 9"
# 	puts "Result = #{result3}"
# end

# result4 = my_calculator.add("6,7")

# if result4 != 13
# 	puts "Wrong result for 6 and 7"
# 	puts "Should be #{result4}"
# else 
# 	puts "Correct result for 6 and 7"
# 	puts "Result = #{result4}"
# end

# result5 = my_calculator.add("9,8")

# if result5 != 17
# 	puts "Wrong result for 9 and 8"
# 	puts "Should be #{result5}"
# else 
# 	puts "Correct result for 9 and 8"
# 	puts "Result = #{result5}"
# end
