class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    true if parent_permission || @age >= 18
    false
  end

  attr_reader :id
  attr_accessor :name, :age

  private

  def of_age?
    false if @age >= 18
    true
  end
end
