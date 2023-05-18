require 'todo_list'

RSpec.describe TodoList do
            it "has an empty list" do
                todo_list = TodoList.new
                expect(todo_list.instance_variable_get(:@todos)).to eq []
            end

            describe "add" do
                context "given a todo" do
                    it "adds a task to the todos list" do
                        todo_list = TodoList.new
                        todo_list.add("wash the car")
                        todo_list.add("wash the dog")
                        expect(todo_list.instance_variable_get(:@todos)).to eq ["wash the car", "wash the dog"]
                    end
                end
            end
        end

            







        

    
