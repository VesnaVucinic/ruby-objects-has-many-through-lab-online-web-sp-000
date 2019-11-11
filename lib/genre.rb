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

#The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
  def songs
    Song.all { |song| song.genre == self }
  end

#
  def artists
    songs.map(&:artist)
  end

  def add_song(song)
    songs << song
  end
end