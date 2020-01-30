class Patient
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end
end