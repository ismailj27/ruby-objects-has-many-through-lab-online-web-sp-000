require "pry"
class Patient
  attr_accessor :name, :appointment
  
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
    self.all.select do |d_appt|
      d_appt.name == Patient.name
    end
  end
  
  def doctors
    appointments.select do |d_appt|
      d_appt.name == Doctor.name
    end
  end
  
end