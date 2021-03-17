#requirements

#class
class Song 
    # class variables
    @@all = []

    # instance variables
    attr_reader :name
    attr_accessor :artist

    # constructor
    def initialize(name)
        @name = name
        @@all << self
    end 

    # class methods
    def self.all
        @@all
    end

    # instance methods
    def artist_name
        if self.artist.nil?
            nil
        else
            self.artist.name
        end  
    end 
end 