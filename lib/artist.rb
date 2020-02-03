class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|s_obj| s_obj.artist == self}
    end

    def genres
        songs.map {|s_obj| s_obj.genre}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def self.all
        @@all
    end

end