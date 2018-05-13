class Song
  
  attr_accessor :genre, :artist, :name
  @@count = 0
  @@genres = []
  @@names = []
  @@artists = []
  @songs_each_genre_hash = {}
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.artists
    artistArray = @@artists.uniq
    artistArray
  end
  
  def self.genre_count
    @songs_each_genre_hash.each do |key, data|
      @Egenres.each do |genre|
        if key == genre
          @songs_each_genre_hash[key] += 1
        end
      end
    end
    @songs_each_genre_hash
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genreArray = @@genres.uniq
    genreArray
  end
  

end