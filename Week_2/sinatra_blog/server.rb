require "sinatra"
require "sinatra/reloader" if development?
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

newblog = Blog.new
system("cls")

get "/home" do
	erb(:home)
end

get "/blog" do
	@posts = newblog.posts
	newblog.latest_posts
	erb(:home_blog)
end


get "/post/:id" do
	@posts = newblog.posts
	id= params[:id].to_i
	@post = newblog.posts[id]
	erb(:post_page)

end

get "/new_post" do
	erb(:new_post)
end

post "/new_post1" do
	title= params[:title]
	contents = params[:contents]
	date = params[:date]
	author= params[:author]
	category= params[:category]
	post = Post.new(title, date, contents, category, author)
	newblog.add_post(post)

	redirect to("/blog")

end