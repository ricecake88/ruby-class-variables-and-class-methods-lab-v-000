class Song
  
  attr_accessor :genre, :artist
  attr_reader :name
  @@count = 0
  @@GENRES = []
  
  def initialize(artist, name, genre)
    @@count += 1
    @name = name
    if !@@GENRES.include?(genre)
      @@GENRES << genre
  end
  
  def self.artists
  end
  
  def self.genre_count
  end
  
  def self.count
    @@count
  end
end