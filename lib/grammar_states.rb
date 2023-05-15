class GrammarStats
    def initialize
        @texts = []
        @texts_checked = 0
        @texts_passed = 0
    end
  
    def check(text)
        return "No text provided." if text.nil? || text.empty?
    first_char = text[0]
    last_char = text[-1]
    sentence_endings = ['.', '?', '!']
    if first_char == first_char.capitalize && sentence_endings.include?(last_char)
      @texts << text
      @texts_checked += 1
      @texts_passed += 1
      true
    else
      @texts_checked += 1
      false
    end
  end
    
      def percentage_good
        if @texts_checked == 0
            return 0
          else
            (@texts_passed.to_f / @texts_checked.to_f) * 100
          end
        end
      end
  