system("cls")
class Todolist
	def initialize 
		@tasks = []
	end
	def create_task(discripion)

	end
	def delete_task

	end
end



class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
    end
    def completed?
    	return @completed
    end

    def complete!
    	@completed = true
    end
end









