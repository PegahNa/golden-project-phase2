1. Describe the Problem

# As a user

# So that I can improve my grammar

# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
   Include the name of the method, its parameters, return value, and side effects.

improve_grammar = grammar(text)

# text is a string of words

# is_correct = check_grammar(text)

# is_correct is a boolean depending on whether it checks out

3. Create Examples as Tests
   Make a list of examples of what the method will take and return.

# 1 check_grammar(" ") => fail Not a "sentence"

# 2 check_grammar("Hello, I am Pegah.") => true

# 3 check_grammar("Hello, I am Pegah") => false

# 4 check_grammar("hello, I am Pegah") => false

# 5 check_grammar("hello, I am Pegah.") => false

# 6 check_grammar("Hello, I am Pegah!") => true

4. Implement the behaviour
   After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
