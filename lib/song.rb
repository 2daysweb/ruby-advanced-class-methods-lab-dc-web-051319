class Song
  attr_accessor :artist_name, :name
  attr_reader :song

  @@all = []
  
    def initialize(name)
      @name = name
    end 
  
    def self.create(name)
     @@all <<  Song.new(name)
     return Song.new(name)
      
    end 
   
    def self.new_by_name(new_song)
      Song.new(new_song)
    end 
    
    def self.create_by_name
      
    end 
    
    def self.find_by_name
    end 
    
    def self.find_or_create_by_name
    end 

    def self.alphabetical 
    end 
    
    def self.new_from_filename
    end 
    
    def self.destroy_all
    end 
    
    
    

    def self.all
      @@all
    end

    def save
      self.class.all << self
    end

    end
