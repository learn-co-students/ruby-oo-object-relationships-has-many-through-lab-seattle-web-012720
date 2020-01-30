class Artist

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
            song.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map {|song| song.genre}
    end


end