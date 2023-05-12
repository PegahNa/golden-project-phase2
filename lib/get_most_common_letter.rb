def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
      counter[char.downcase] += 1 if char.match?(/[a-zA-Z]/)
      p counter
    end
    counter.max_by { |k, v| v }[0]
  end
  

  p get_most_common_letter("the roof, the roof, the roof is on fire!")
  

 

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"

