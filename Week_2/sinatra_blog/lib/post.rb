
class Post
	attr_accessor :name, :date, :text, :category, :author
	def initialize(name, date, text, category, author)
		@name = name
		@date = date
		@text = text
		@category = category
		@author = author
	end
	
end
