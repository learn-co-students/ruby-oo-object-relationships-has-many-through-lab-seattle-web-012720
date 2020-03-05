class Genre

    attr_reader :name, :genre
    attr_accessor :song
    
    @@all = []

    def inititialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

end