require 'todo_list'
require 'todo'

describe "integration" do
      it "adds a todo to the list" do
        todo_list = TodoList.new
        todo = Todo.new("wash the car")
        todo_list.add(todo)
        expect(todo_list.instance_variable_get(:@todos)).to eq [todo]
      end

      describe "incomplete" do
        it "returns all non-done todos" do
          todo_list = TodoList.new
          todo = Todo.new("wash the dishes")
          todo_list.add(todo)
          expect(todo_list.incomplete).to eq [todo]
        end
      end
    
      describe "complete" do
        it "returns all complete todos" do
          todo_list = TodoList.new
          todo = Todo.new("bake a cake")
          todo.mark_done!
          todo_list.add(todo)
          expect(todo_list.complete).to eq [todo]
        end
      end
    
      describe "give_up!" do
        it "marks all todos as complete" do
          todo_list = TodoList.new
          todo1 = Todo.new("do your homework")
          todo2 = Todo.new("clean the room")
          todo_list.add(todo1)
          todo_list.add(todo2)
          todo_list.give_up!
          expect(todo1.done?).to eq true
          expect(todo2.done?).to eq true
        end
      end
    end
    
  

  