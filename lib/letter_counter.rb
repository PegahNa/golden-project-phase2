class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0)
      @text.chars.each do |char|
        next unless is_letter?(char)
        counter[char.downcase] += 1
      end
      most_common = nil
      most_common_count = 0
      counter.each do |letter, count|
        if count > most_common_count
          most_common = letter
          most_common_count = count
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]