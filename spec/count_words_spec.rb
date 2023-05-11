require 'count_words'
"--color --format documentation"
RSpec.describe "count_words method" do
    it "return the number of words in a string" do
        result = count_words("Pegah is going to Gym")
        expect(result).to eq (5)
    end
end

