class Genre 
  attr_accessor :name 
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  def
  
  def song 
    song.all.select do |song|
      song.genre == self
    end
  end
  
  def artist
      #tags.map(&:name) is sort from of tags.map{|tag| tag.name}
       songs.map(&:artist)
      #song.genre.all.collect |song|
      #song.artist
    end
  end
  
  
