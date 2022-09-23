require_relative '../teacher'
require_relative '../person'

describe Teacher do
  context 'When testing the Teacher class' do
    it 'Has return true when we call the can_use_services? method' do
      teacher = Teacher.new(36, 'Addisu', 'true')
      response = teacher.can_use_services?
      expect(response).to eq true
    end

    it 'Has create an instance of Person when creating a Teacher' do
      teacher = Teacher.new(36, 'Addisu', 'true')
      expect(teacher).to be_a Person
    end
  end
end