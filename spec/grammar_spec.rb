require 'grammar'
"--color --format documentation"
RSpec.describe "grammar method" do
context "when passed a string" do
    it "confirms that the string is valid" do
     expect(grammar("Hello, I am Pegah.")).to eq "Sentence is correct."
    end


    it "reports an invalid sentence if it doesn't beging with a capital letter" do
     expect(grammar("hello, I am Pegah.")).to eq "Sentence is not correct."
    end

    it "reports an invalid sentence if it doesn't end with a corret punctuation" do
     expect(grammar("Hello, I am Pegah")).to eq "Sentence is not correct."
    end
end  
end