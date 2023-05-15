{{PROBLEM}} Class Design Recipe

1. Describe the Problem

   As a user
   So that I can keep track of my tasks
   I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
   Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class TodoList
def initialize
end

def add(task)

# Return nothing

end

def list

# Returns a list of tasks added a strings

end

def complete(task)

# Returns nothing

# fails if tasks doesn't exist

end

3. Create Examples as Tests

# EXAMPLE

# 1

todo_list = TodoList.new
todo_list.list # => []

# 2

todo_list = TodoList.new
todo_list.add("wash the car")
todo_list.list # => ["wash the car"]

# 3

todo_list = TodoList.new
todo_list.add("wash the car")
todo_list.add("wash the dog")
todo_list.list # => ["wash the car, "wash the dog"]

# 4

todo_list = TodoList.new
todo_list.add("wash the car")
todo_list.add("wash the dog")
todo_list.complete("wash the car")
todo_list.list # => ["wash the car, "wash the dog"]

# 5

todo_list = TodoList.new
todo_list.add("wash the car")
todo_list.complete("wash the sheep")
todo_list.list # => fails

4. Implement the Behaviour

   After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
