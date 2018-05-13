class Song
  
  attr_accessor :genre, :artist, :name
  @@count = 0
  @@genres = []
  @@names = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.artists
    @artists.uniq {|x| x}
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