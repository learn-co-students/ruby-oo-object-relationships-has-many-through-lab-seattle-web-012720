class Artist

    @@all = []

    attr_accessor :name, :song

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.find_all { |song| song.artist == self }
    end

    def genres
        songs.map { |song| song.genre }
    end

end