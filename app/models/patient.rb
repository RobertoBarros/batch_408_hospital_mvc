class Patient
  attr_reader :name, :age
  attr_accessor :id, :room

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @room = attributes[:room] # This is a room instance. Not a room_id!!!
  end

end


# r1 = Room.new(number: 333, capacity: 20)

# p1 = Patient.new(name: 'Paulo', age: 20, room: r1)

