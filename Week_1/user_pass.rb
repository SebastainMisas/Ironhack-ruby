class Login 
	attr_accessor :username, :password
	def questions

		puts "username"
		@username = gets.chomp
		puts "password"
		@password = gets.chomp 
	end
end




class Authenticator
	def initialize(login)
		@login = login
	end

	def check 
		if @login.username.upcase == "SEBASTIAN" && @login.password.upcase == "HELLOWORLD"
			puts "Login was sucessful!"
			# Games
		elsif @login.username.upcase != "SEBASTIAN" || @login.password.upcase != "HELLOWORLD"
		 	 
			puts "Your username or password was incorect."
		end
	end
end



# module Game 
# 		puts "Guess a number between 1 and 50"
# 		guess = gets.chomp
# 		puts "you have entered #{guess}." 
# 		while guess != 23 
# 			puts "wrong..try again."
# 			guess
# 		end
# 		puts "you have guessed right! congrats!"	


# end


newlogin = Login.new 
newlogin.questions

authenticate = Authenticator.new(newlogin)

authenticate.check