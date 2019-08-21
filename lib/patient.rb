require "pry"
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
  
  def new_appointment(a_doctor, a_date)
    Appointment.new(a_date, self, a_doctor)
  end
  
  def appointments
    Appointment.all.select do |d_appt|
      d_appt.patient.name == self.name
    end
  end
  
  def doctors
    doctors_arr = []
    appointments.each do |d_appt|
      doctors_arr << d_appt.doctor
    end
    doctors_arr
  end
  
end