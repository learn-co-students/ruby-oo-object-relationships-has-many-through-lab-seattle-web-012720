require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        newest = Song.new(name, self, genre)
    end

    def genres
        genre_array = self.songs.map {|song| song.genre}
        genre_array.uniq
    end
    
end

