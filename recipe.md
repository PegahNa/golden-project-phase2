1. Describe the Problem

# As a user

# So that I can improve my grammar

# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
   Include the name of the method, its parameters, return value, and side effects.

reading_time = calculate_reading_time(text)

# text is a string of words

# reading_time is a integer representing time/minute

3. Create Examples as Tests
   Make a list of examples of what the method will take and return.

# 1 calculate_reading_time("") => 0

# 2 calculate_reading_time("one") => 1

# 3 calculate_reading_time("TWO_HUNDRED_WORDS") => 1

# 4 calculate_reading_time("THREE_HUNDRED_WORDS") => 2

# 5 calculate_reading_time("FOUR_HUNDRED_WORDS") => 2

# 6 calculate_reading_time("FIVE_THOUSAND_WORDS") => 25

4. Implement the behaviour
   After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
