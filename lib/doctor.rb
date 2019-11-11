class Doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient,date,self)
  end
  
  def appointments 
    Appointment.all.select {|Appointment| Appointment.doctor == self}
    
    
    
  