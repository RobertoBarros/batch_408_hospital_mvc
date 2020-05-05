class Room

  attr_reader :number, :capacity
  attr_accessor :id, :patients

  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = [] # Array of all patients in this room
  end

  # Add a new patient instace in this room instace
  def add_patient(patient)
    patient.room = self # puts this room instance in the patient instance
    @patients << patient
  end

end