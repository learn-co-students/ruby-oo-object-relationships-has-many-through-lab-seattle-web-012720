require 'pry'

class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appoint| appoint.patient == self}
    end

    def new_appointment(doctor, date)
        newest = Appointment.new(date, self, doctor)
    end

    def doctors
        self.appointments.map {|appoint| appoint.doctor}
    end
end