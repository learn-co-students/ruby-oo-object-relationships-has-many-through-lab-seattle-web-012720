class Genre

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.find_all { |song| song.genre == self}
    end

    def artists
        songs.map { |song| song.artist}
    end

end