require_relative '../views/patients_view'

class PatientsController
  def initialize(patient_repository, room_repository)
    @patient_repository = patient_repository
    @view = PatientsView.new
    @room_repository = room_repository
    @rooms_view = RoomsView.new
  end

  def create
    name = @view.ask_name
    age = @view.ask_age
    patient = Patient.new(name: name, age: age)

    @rooms_view.list(@room_repository.all)
    room_id = @rooms_view.ask_id
    room = @room_repository.find(room_id)

    room.add_patient(patient)


    @patient_repository.add(patient)
  end

  def list
    patients = @patient_repository.all
    @view.list(patients)
  end
end