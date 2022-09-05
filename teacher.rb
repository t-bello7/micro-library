require_relative './person'

class Teacher < Person
  def initialize(specialization = 'unknown')
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
