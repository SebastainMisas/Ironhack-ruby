require "sinatra"
require "sinatra/reloader" if development?

#save data from user input: 
enable(:sessions)

#making new pages(routes):
#The erb we put inside the routes are html/ruby/js 
#the public folder contains all the JS and css/ img files


get "/home" do
	erb(:home)
end

get "/about" do 
	erb(:about)
end


#make a post to save the users input to a route

post "/process-login" do
	registered_users = [
		{user: "sebastian@gmail.com", :pass => "password"},
		{user: "josh@gmail.com", :pass => "password1"},
		{user: "nizar@gmail.com", :pass => "password2"},

	]
	#params saves the information through the submit button made in erb. I am saving them in varibale down below.

	submitted_user = params[:user]
	submitted_pass = params[:pass]

	#I am setting the matched user as nothing(nil) so that It can change in the loop. 	
	matched_user = nil

	#I am looping through the registed users and if it hits a user thats correct it will save that to the matched_user variable

	registered_users.each do |registerd_user|
		if submitted_user == registerd_user[:user] && submitted_pass == registerd_user[:pass]
			# It has matched a registed user!!!
			matched_user = registerd_user
		end
	
	end

	#If the loop I made above saved a user to matched_user then it will redirect them to their session profile page
	#because the loop changed the matched_user from nil to registerd user 
	#else redirect to the same login page

	if matched_user != nil
		session[:current_user] = matched_user[:user]
		redirect to("/profile")
	else
		redirect to ("/home")
	end

end
#end of the post function 

#I made a page called profile.
get "/profile" do
	#If the session was equal with the matched user then load the user_profile erb or html file. 
	if session[:current_user] != nil
		@name = session[:current_user]
		erb(:user_profile)
	else
		redirect to("/login")
	end
end