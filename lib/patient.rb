require "pry"
class Patient
  attr_accessor :name, :appointments
  
  @@all = []
  def initialize(name)
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(a_doctor, a_date)
    self.new(a_doctor, a_date)
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