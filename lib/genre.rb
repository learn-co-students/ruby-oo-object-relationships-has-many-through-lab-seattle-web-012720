class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|s_obj| s_obj.genre = self}
    end

    def artists
        songs.map {|s_obj| s_obj.artist}
    end

    def self.all
        @@all
    end
end