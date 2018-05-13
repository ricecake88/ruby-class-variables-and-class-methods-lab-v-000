class Song
  
  @@artists
  
  def initialize(artist, name, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def name
    @name
  end
  
  def self.artists
end