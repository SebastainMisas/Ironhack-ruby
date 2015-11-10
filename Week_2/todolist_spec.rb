require_relative("todolist.rb")

RSpec.describe "To do List test" do
	before :each do 
		@task = Task.new("Buy the milk")
	end
	it "should return true for (completed?) meathod" do
		expect(@task.completed?).to eq(false)
	end

	it "should be able to complete a task" do
		@task.complete!
		expect(@task.completed?).to eq(true) 
	end
	it "Should be able to add taks to todolist" 
		expect(@todolist.add_task).to eq()
end




