class Genre
    attr_accessor :genre, :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        # binding.pry
        self.songs.map {|song| song.artist}
    end

    def self.all
        @@all
    end
end