require 'pry'
class Doctor

  attr_accessor :name, :patients
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def new_song(name, genre)
   Song.new(name, self, genre)

  end

def self.all
  @@all
end

def appointments
  Appointment.all.select do |appt|
    appt.doctor == self
  end
end

def patients
appointments.map do |appt|
  appt.patient
  end
end
binding.pry
puts "patients"


end
