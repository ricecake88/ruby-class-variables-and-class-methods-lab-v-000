class Song
  
  attr_accessor :genre, :artist
  attr_reader :name
  @@count = 0
  @@genres = []
  @@names = []
  @@artists = []
  
  def initialize(artist, name, genre)
    @name = artist
    @genre = genre
    @name = name
    @@count += 1
    @@gengres << genre
  end
  
  def self.artists
  end
  
  def self.genre_count
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    if !@@GENRES.include?(genre)
      @@genres << @genre
    end    
    @@genres
  end
end