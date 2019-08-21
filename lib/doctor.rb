require "pry"
class Doctor
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(a_date, a_patient)
    Appointment.new(a_date, a_patient, self)
  end
  
  def appointments
    Appointment.all.select do |d_appt|
      d_appt.doctor.name == self.name
    end
  end
  
  def patients
    patients_arr = []
    appointments.select do |d_appt|
      patients_arr << d_appt.patient
    end
    patients_arr
  end
  
end
  
  