class characters
	def initialize
		@char_array = []
		@name = name
	end
	def add_char(name)
		@char_array.push(name)
	end

end



human1 = {
	:name => "Sebastian",
	:city => "Azeroth",
	:class => "Warlock",
}


puts human1[:name]


illidan = {
	:name => "Illidan",
	:city => "outland",
	:class => "Demon Hunter",
}

puts illidan[:class]


# puts "What is your characters name?"
# char = gets.chomp

# puts "Your character's new name is " + '"'+char+'"'"."