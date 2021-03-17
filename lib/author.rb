#requirements
require 'pry'

#class code
class Author 
    # instance variables
    attr_accessor :name

    #constructor
    def initialize(name)
        @name = name 
    end 

    # instance methods 
    def posts
        Post.all.find_all{ |post| post.author == self}
    end 

    def add_post(post)
        post.author = self
    end 

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self 
    end 
        
    # class methods
    def self.post_count
        Post.all.size 
    end 
  
end