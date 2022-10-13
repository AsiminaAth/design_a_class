require 'exercise'

RSpec.describe TaskTracker do
    it "has an empty list" do
        taskTracker = TaskTracker.new
        expect(taskTracker.list_of_todos).to eq []
    end

    it "gets the task in the list" do
        taskTracker = TaskTracker.new
        taskTracker.add("shopping")
        expect(taskTracker.list_of_todos).to eq ["shopping"]
    end

    it "gets the tasks in the list" do
        taskTracker = TaskTracker.new
        taskTracker.add("shopping")
        taskTracker.add("cleaning")
        expect(taskTracker.list_of_todos).to eq ["shopping", "cleaning"]
    end

    it "gets the tasks in the list" do
        taskTracker = TaskTracker.new
        taskTracker.add("shopping")
        taskTracker.add("cleaning")
        taskTracker.completed_tasks("cleaning")
        expect(taskTracker.list_of_todos).to eq ["shopping"]
    end

    it "gets the tasks in the list" do
        taskTracker = TaskTracker.new
        taskTracker.add("shopping")
        expect{taskTracker.completed_tasks("dusting")}.to raise_error "There is no such task!"
    end
end