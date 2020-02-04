require 'pry'

class Artist
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        # binding.pry
        Song.all.find_all{|song| song.artist == self}
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def genres
        Song.all.map {|song| song.genre}
    end

    def self.all
        @@all
    end

end