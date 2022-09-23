require './solver'

describe Solver do
  describe '#factorial' do
    it 'raises an exception when given a negative number' do
      solver = Solver.new
      expect { solver.factorial(-5) }.to raise_error(StandardError)
    end

    it 'returns 1 when given 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the factorial of the given number' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of the given string' do
      new_str = Solver.new
      expect(new_str.reverse('hello')).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'returns fizz when given number is divisible by 3' do
      test1 = Solver.new
      expect(test1.fizzbuzz(3)).to eq('fizz')
    end

    it 'returns buzz when given number is divisible by 5' do
      test2 = Solver.new
      expect(test2.fizzbuzz(5)).to eq('buzz')
    end

    it 'returns fizzbuzz when given number is divisible by 3 and 5' do
      test3 = Solver.new
      expect(test3.fizzbuzz(15)).to eq('fizzbuzz')
    end
  end
end
