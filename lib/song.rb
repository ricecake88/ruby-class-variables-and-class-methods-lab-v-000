class Song
  
  attr_accessor :name, :genre, :artist
  @@count = 0
  
  def initialize(artist, name, genre)
    @@count += 1
  end
  
  def self.artists
  end
  
  def self.genre_count
  end
end