require 'grammar_states'
"--color --format documentation"
RSpec.describe GrammarStats do
    describe "#check" do
      it "returns true if the text starts with a capital letter and ends with a sentence-ending punctuation mark." do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Pegah is a software engineer.")).to eq true
      end
  
      it "returns false if the text does not start with a capital letter." do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("pegah is a software engineer.")).to eq false
      end
  
      it "returns false if the text does not end with a sentence-ending punctuation mark." do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Pegah is a software engineer")).to eq false
      end
    end
    
    it "returns 'No text provided.' if no text is provided." do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("")).to eq "No text provided."
    end
    
    describe "#percentage_good" do
      it "returns the correct percentage of texts that passed the check." do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Pegah is a software engineer.")
        grammar_stats.check("This is a valid sentence.")
        grammar_stats.check("This is also a valid sentence.")
        expect(grammar_stats.percentage_good).to eq 100
      end
  
      it "returns 0 if no text was provided." do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.percentage_good).to eq 0
      end
    end
  end
  
  
  
  
  
  
  
  
  
