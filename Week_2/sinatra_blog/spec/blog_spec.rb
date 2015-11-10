require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"
system("cls")

RSpec.describe "blog class" do
	it "returns the posts that were added" do
		blog = Blog.new
		josh_post = Post.new("Josh's Post", "10/20/15","Hello josh is amazing")
		blog.add_post(josh_post)
	expect(blog.posts).to eq([josh_post])
	end
	it "Should order all the posts in regard to their date" do
		first_time = Time.new(2015, 10, 21)
		second_time = Time.new(2015, 10, 22)
		third_time = Time.new(2015, 10, 23)
		blog = Blog.new
		josh_post = Post.new("Josh's Post", first_time,"Hello josh is amazing")
		nizar_post = Post.new("Nizar's Post", second_time, "Hello this is Nizars post")
		sebastian_post = Post.new("sebastians's Post", third_time, "Hello this is sebastian post")
		blog.add_post(josh_post)
		blog.add_post(nizar_post)
		blog.add_post(sebastian_post)
	expect(blog.latest_posts).to eq([sebastian_post, nizar_post, josh_post])
	end

end
