class Music
    def initialize
        @listened_to = []
    end
    
    def complete(string)
        @listened_to << string
        end

    def list
        if @listened_to.empty?
            return "no music"
        end
        return @listened_to
    end
end
    
    
    