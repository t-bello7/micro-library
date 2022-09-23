require_relative '../person'

describe TrimmerDecorator do
  context 'to test trimmer class function' do
    before(:each) do
      @person = Person.new(14, 'hippopothemus')
      @trimmer_decorator = TrimmerDecorator.new(@person)
    end

    it 'the trimmer correct name should be' do
      expect(@trimmer_decorator.correct_name).to eql 'hippopothe'
    end
  end
end
