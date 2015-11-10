require "sinatra"

get "/add" do
  erb(:add)
end

get  "/home" do
	erb(:home)
end