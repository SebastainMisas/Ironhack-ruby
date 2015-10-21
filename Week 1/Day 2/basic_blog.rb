require 'Date'

class Blog 
	def initialize
	@posts = []
	end
	def add_post(post)
		@posts.push(post)
	end
	def create_front_page
		puts "Front Page"
		puts "-----------------------"
		puts "#{@posts}"
	end

	def order_posts
		puts Date.today
	end


end

class Post
	attr_accessor :title, :date, :text 
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
	



end







blog1 = Blog.new
josh_post = Post.new("Josh's Post", "10/20/15","Hello josh is amazing" )
blog1.add_post(josh_post)


blog1.create_front_page




