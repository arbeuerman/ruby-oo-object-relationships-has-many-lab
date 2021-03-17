#requirements
require 'pry'

#class
class Post 
    # class variables
    @@all = []

    # instance variables
    attr_reader :title 
    attr_accessor :author

    # constructor
    def initialize(title)
        @title  = title 
        @@all << self
    end 

    # class methods
    def self.all
        @@all
    end

    # instance methods
    def author_name 
        if self.author.nil?
            nil
        else
            self.author.name 
        end  
    end 
end 