class Doctor

    @@all = []
    def self.all
        @@all
    end

    attr_reader :name
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end

end