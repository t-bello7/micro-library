require_relative '../student'
require_relative '../book'
require_relative '../rental'

describe Rental do
  context 'when testing the rental class' do
    before(:each) do
      @student = Student.new(24, 'jay', 'true')
      @book = Book.new('Think like a monk', 'rich dad poor dad')
      @rental = Rental.new('2022-08-01', @student, @book)
    end

    it 'to be instance of student' do
      expect(@rental.person).to be_instance_of(Student)
    end

    it 'to be instance of book' do
      expect(@rental.book).to be_instance_of(Book)
    end

    it 'should contain date string' do
      expect(@rental.date).to eq '2022-08-01'
    end

    it ' should equal to student' do
      expect(@rental.person).to eql @student
    end

    it 'should be tuthy' do
      expect(@rental).to be_truthy
    end
  end
end