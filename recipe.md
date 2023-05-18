{{PROBLEM}} Class Design Recipe

1. Describe the Problem

   As a user
   So that I can keep track of my music listening
   I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

# EXAMPLE

class Music
def initialize
end

def add(string)
Return nothing
end

def list
Returns a list of string added
end

def complete(string)
Returns nothing
fails if string doesn't exist
end

3. Create Examples as Tests

# EXAMPLE

# 1

music = Music.new
music.list # => []

# 2

music = Music.new
music.complete("deep focus")
music.list # => ["deep focus"]

# 3

music = Music.new
music.complete("deep focus")
music.complete("jaz")
music.list # => ["deep focus", "jazz"]

4. Implement the Behaviour

   After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

rspec ./spec/todo_list_spec.rb ./spec/todo_spec.rb ./spec/todo_integration_spec.rb
