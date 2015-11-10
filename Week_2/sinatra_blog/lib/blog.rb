
class Blog 
	attr_accessor :posts
	def initialize
	@posts = []
	end
	def add_post(post)
		@posts.push(post)
	end

	def latest_posts
		@posts.sort{|post,post2| post2.date <=> post.date}
	end

end
