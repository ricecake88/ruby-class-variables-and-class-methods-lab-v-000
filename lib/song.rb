class Song
  
  attr_accessor :genre, :artist, :name
  @@count = 0
  @@genres = []
  @@names = []
  @@artists = []
  
  def initialize(artist, name, genre)
    @name = artist
    @genre = genre
    @name = name
    @@count += 1
    @@genres << genre
  end
  
  def self.artists
  end
  
  def self.genre_count
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq{|x| x}
    puts @@genre
  end
end