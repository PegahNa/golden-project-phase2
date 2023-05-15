require 'music'
"--color --format documentation"
RSpec.describe Music do
    describe "#complete" do 
        it "adds new music to the list" do
            music = Music.new
            expect(music.complete("deep focus")).to eq ["deep focus"]
        end
    end

    it "returns the list of music" do
        music = Music.new
        music.complete("deep focus")
        music.complete("jazz")
        expect(music.list).to eq ["deep focus", "jazz"]
    end


    it "returns no music if no music was provided." do
        music = Music.new
        expect(music.list).to eq "no music"
    end
end