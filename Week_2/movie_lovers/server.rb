require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/home" do 
	erb(:home)
end

post "/movie_search" do
	category = params[:category]
	search = Imdb::Search.new(category)
	@movies = search.movies[0..8]
 	@correct_movie = @movies.sample
 	erb(:movies)

	
end


