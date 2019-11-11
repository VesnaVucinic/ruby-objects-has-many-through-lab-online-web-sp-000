class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song (name, genre)
  #    Song.new(name, self, genre)
    Song.new(name, genre)
    song.atrist == self
  end

  def songs 
    song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres 
    #song.all.collect do |genre|
     # genre.song 
    songs.map(&:genre)
    end
  end
  
end




