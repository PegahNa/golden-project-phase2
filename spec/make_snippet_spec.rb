require 'make_snippet'
"--color --format documentation"
RSpec.describe "make_snippet method" do
    it "returns the first five words in a string" do
        result = make_snippet("Pegah is going to walk in the park")
        expect(result).to eq "Pegah is going to walk ..."
    end
end
