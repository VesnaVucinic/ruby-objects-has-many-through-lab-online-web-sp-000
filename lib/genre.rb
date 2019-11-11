class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    #Song.all { |song| song.genre == self }
    Song.all do |song|
      song.genre == self
    end
  end

  def artists
    #songs.map(&:artist)
    Song.genre.all |song|
      song.artist
    end

  end

  def add_song(song)
    songs << song
  end
end
