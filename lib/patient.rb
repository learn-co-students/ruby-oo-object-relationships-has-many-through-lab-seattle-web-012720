class Patient
    attr_accessor :name, :doctor
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        # returns all appointments associated with this Patient
        Appointment.all.select {|obj| obj.patient == self}
    end

    def doctors
        appointments.map {|obj| obj.doctor}
    end

    def self.all
        @@all
    end
end