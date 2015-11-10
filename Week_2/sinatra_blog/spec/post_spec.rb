require_relative "../lib/post.rb"
system("cls")

RSpec.describe "post class test" do 
	it "should return the correct name." do
		josh_post = Post.new("Josh's Post", "10/20/15","Hello josh is amazing" )
	expect(josh_post.name).to eq("Josh's Post")
	end
	it "Should return the correct date." do 
		sebastian_post = Post.new("sebastians's Post", "10/29/15", "Hello this is sebastian post")
	expect(sebastian_post.date).to eq("10/29/15")
	end
	it "Should return the correct text" do
		nizar_post = Post.new("Nizar's Post", "10/29/15", "hello this is nizars post")
	expect(nizar_post.text).to eq("hello this is nizars post")
	end
end