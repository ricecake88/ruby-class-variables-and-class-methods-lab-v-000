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
    empty = true
    @songs_each_genre_hash.each do |key, data|
      @@genres.each do |genre|
        if key == genre
          empty = false
          @songs_each_genre_hash[key] += 1
        end
      end
      if empty
        @songs_each_genre[key] = 1
        binding.py
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

song = Song.new("name", "artist", "genre")
song.genre_count