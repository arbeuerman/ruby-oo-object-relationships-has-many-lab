#requirements
require 'pry'

#class code
class Artist 
    # instance variables
    attr_accessor :name

    #constructor
    def initialize(name)
        @name = name 
    end 

    # class methods 
    def self.song_count
        Song.all.size
    end 
        
    # instance methods
    def songs
        Song.all.find_all{ |song| song.artist == self}
    end 

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end 

end