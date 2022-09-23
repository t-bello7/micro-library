require_relative '../person'

describe CapitalizeDecorator do
  context 'When testing the capitalize_decorator class' do
    before:each do
      @person = Person.new(30, 'yankee')
      @capitalizer = CapitalizeDecorator.new(@person)
    end

    it 'The capitalize_decorator should not be null' do
      expect(@capitalizer).to be_truthy
    end

    it "The capitalize_decorator's correct_name should be Yankee" do
      expect(@capitalizer.correct_name).to eq 'Yankee'
    end
  end
end