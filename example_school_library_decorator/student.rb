require './person'

class Student < Person
  def initialize(age, parent_permission, name = 'Unknown', classroom = '')
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
