class TodoList
    def initialize
        @todos = []
    end
  
    def add(todo) 
        @todos << todo
        # todo is an instance of Todo
    # Returns nothing
    end
  
    def incomplete
      @todos.reject { |todo| todo.done? }
      # Returns all non-done todos
    end
  
    def complete
        @todos.select { |todo| todo.done? }
        # Returns all complete todos
    end
  
    def give_up!
       @todos.each { |todo| todo.mark_done! }
       # Marks all todos as complete
    end
  end