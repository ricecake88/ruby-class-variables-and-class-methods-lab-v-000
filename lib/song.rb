class Song
  
  attr_accessor :genre, :artist
  attr_reader :name
  @@count = 0
  @@GENRES = []
  @@names = []
  @@artists = []
  
  def initialize(artist, name, genre)
    @name = artist
    @genre = genre
    @name = name
    @@count += 1
    if !@@GENRES.include?(genre)
      @@GENRES << @genre
    end
  end
  
  def self.artists
  end
  
  def self.genre_count
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@GENRES
  end
end