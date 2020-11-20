require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            count = @@genres.count(genre)
            genre_hash[genre] = count 
        end 
        genre_hash
    end 

    def self.artist_count
        artists_hash = {}
        self.all.each do |song|
            count = self.all.count(song.artist)
            artists_hash[artist.name] = count
        end 
        artists_hash
    end 

        
     


end 