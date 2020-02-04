require 'pry'

class Artist
    attr_accessor :name   
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def new_song (name, genre)
        new_song = Song.new(name, self, genre)
        # new_song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
       list = songs
       genre_list = []
       list.each {|song| genre_list << song.genre} 
       genre_list
    end

    def self.all
        @@all
    end

end