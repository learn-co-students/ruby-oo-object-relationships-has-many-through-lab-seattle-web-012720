class Genre

    @@all = []
    def self.all
        @@all
    end

    attr_reader :name
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map {|song| song.artist}
    end
end
