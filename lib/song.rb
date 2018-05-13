class Song
  
  attr_accessor :genre, :artist
  attr_reader :name
  @@count = 0
  
  def initialize(artist, name, genre)
    @@count += 1
    @name = name
  end
  
  def self.name
  
  def self.artists
  end
  
  def self.genre_count
  end
end