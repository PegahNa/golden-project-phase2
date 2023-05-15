require 'todo_list'
"--color --format documentation"
RSpec.describe TodoList do
    context "given no tasks" do
        it "has an empty list" do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end

    context "given a task" do
        it "has both task in the list" do
            todo_list = TodoList.new
            todo_list.add("wash the car")
            todo_list.add("wash the dog")
            expect(todo_list.list).to eq ["wash the car", "wash the dog"]
        end
    end

    context "when we complete the task" do
        it "removes the task from the list" do
            todo_list = TodoList.new
            todo_list.add("wash the car")
            todo_list.add("wash the dog")
            todo_list.complete("wash the car")
            expect(todo_list.list).to eq ["wash the dog"]
        end
    end

    context "when we try complete a none existent task" do
        it "fails" do
            todo_list = TodoList.new
            todo_list.add("wash the car")
            expect { todo_list.complete("wash the sheep") }.to raise_error "No such task"
        end
    end
end


