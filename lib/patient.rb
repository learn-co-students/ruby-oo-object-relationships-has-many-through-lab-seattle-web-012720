class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def appointments
        Appointment.all.select{|apt| apt.patient == self}

    end

    def doctors
        appointments.map {|apt| apt.doctor}

    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

end