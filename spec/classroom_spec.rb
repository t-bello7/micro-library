require_relative '../classroom'

describe Classroom do
  context 'check behaviour of classroom ' do
    before(:each) do
      @classroom = Classroom.new('microverse')
    end

    it 'should contain a named class argument' do
      expect(@classroom.label).to eql 'microverse'
    end
  end
end