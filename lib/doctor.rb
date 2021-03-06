require "pry"

class Doctor
  attr_reader :name
  # attr_accessor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select{|app| app.doctor == self}
  end

  def patients
    self.appointments.map{|app| app.patient}
  end

end


# Doctor
#   #name
#     has a name (FAILED - 1)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 2)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 3)
#   #appointments
#     has many appointments (FAILED - 4)
#   #patients
#     has many patients, through appointments (FAILED - 5)
