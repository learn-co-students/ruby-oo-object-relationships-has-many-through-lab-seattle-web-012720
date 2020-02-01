 class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select do |appoint|
            appoint.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients 
        Appointment.all.map do |appoint|
            appoint.patient
        end
    end

    def self.all
        @@all
    end
 end