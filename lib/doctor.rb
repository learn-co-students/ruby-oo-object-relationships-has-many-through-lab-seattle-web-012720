require 'pry'

class Doctor
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def new_appointment (patient, date)
        new_appt = Appointment.new(date, patient, self)
        # new_appt.doctor = self
    end

    def appointments
        # binding.pry
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        list = Appointment.all.select {|appt| appt.doctor == self}
       patient_list = []
       list.each {|appt| patient_list << appt.patient} 
       patient_list
    
    end



    def self.all
        @@all
    end

end