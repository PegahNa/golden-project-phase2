require 'todo'

RSpec.describe Todo do
    describe "task" do
        it "returns the task as a string" do
            todo = Todo.new("go to the cinema") 
            expect(todo.task).to eq "go to the cinema"
        end
    end

    describe "done?" do
        it "returns true if the task is done" do
            todo = Todo.new("clean the garden")
            todo.done = true
            expect(todo.done?).to eq true
        end
    end

    describe "mark_done!" do
        it "marks the todo as done" do
            todo = Todo.new("go to the shop")
            todo.mark_done!
            expect(todo.done?).to eq true
        end
    end
end 
    
