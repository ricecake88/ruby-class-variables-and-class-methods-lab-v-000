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
    self.genres.each do |genre|
      @songs_each_genre_hash[genre] = 0
    end
    @songs_each_genre_hash.each do |genreKey, genreData|
      @@genres.each do |genre|
        if genreKey == genre
          @songs_each_genre_hash[genreKey] += 1
        end
      end
    end
    
    @@genres.each do |genre|
      puts @songs_each_genre_hash.key?(genre)
    end
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genreArray = @@genres.uniq
    genreArray
  end
  
end

song = Song.new("woo", "yay", "tee")
Song.genre_count