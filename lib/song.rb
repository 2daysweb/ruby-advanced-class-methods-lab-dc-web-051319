class Song
  attr_accessor :artist_name, :name
  attr_reader :song

  @@all = []
  
    def initialize(name=nil, artist_name=nil)
      @name = name
      @artist_name = artist_name
    end 
  
    def self.create
     song = Song.new
     @@all << song 
     return song
    end 
   
    def self.new_by_name(new_song)
      Song.new(new_song)
    end 
    
    def self.create_by_name(new_song)
      song = Song.new(new_song)
      @@all << song
      return song
      
    end 
    
    def self.find_by_name(name)
      @@all.find do |song|
       song.name == name
        end 
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
