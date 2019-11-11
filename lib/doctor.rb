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
    Appointment.all.select do |Appointment| 
      Appointment.doctor == self
    end
  end
  
  def patients
   # appointments.collect {|patient| patient.doctor}
     appointments.map(&:patient)
  end
  
end


    
    
    
  