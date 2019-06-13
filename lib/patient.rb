class Patient
  attr_accessor :name, :doctor, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @doctor = doctor
    @appointments = appointment
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end


def appointments
  Appointment.all.select do |appt|
  appt.patient == self
  end
end

def doctors
Appointment.all.map do |appt|
  appt.doctor
end
  end

  def patient

  end


end
