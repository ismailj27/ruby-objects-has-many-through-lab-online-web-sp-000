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
  
  def new_appointment(a_patient, a_date)
    Appointment.new(a_patient, a_date)
  end
  
  def appointments
    Appointment.all.select do |d_appt|
      d_appt.doctor.name == self.name
    end
  end
  
  def patients
    patients_arr = []
    appointments.each do |d_appt|
      binding.pry
      patients_arr << d_appt.patient
    end
    patients_arr
  end
  
end
  
  