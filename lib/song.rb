require 'pry'
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
    uniqueGenre = self.genres
    puts uniqueGenre
    uniqueGenre.each do |genre|
      @songs_each_genre_hash[genre] = 1
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

song = Song.new("name", "artist", "genre")
puts Song.genre_count