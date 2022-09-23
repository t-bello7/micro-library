require_relative '../person'
require_relative '../book'

describe Person do
  before :each do
    @person = Person.new('16', 'Bello fight', parent_permission: true)
  end
  it 'Take age, name and parent_permission' do
    expect(@person.age).to eq '16'
    expect(@person.name).to eq 'Bello fight'
    expect(@person.parent_permission).to eq true
    expect(@person.rentals).to eq []
  end

  it 'The constructor method sets default value for the optional name parameter if it is not provided' do
    person = Person.new(30)
    expect(person.name).to eql 'Unknown'
  end

  it 'The constructor method sets default value for the optional parent_permission parameter if it is not provided' do
    person = Person.new(16)
    expect(person.parent_permission).to eql true
  end

  it 'Has return true if the age is more or equal than 18 and the parent_permission in true' do
    person = Person.new(24, 'Sajid', parent_permission: true)
    expect(person.can_use_services?).to eql true
  end
end
