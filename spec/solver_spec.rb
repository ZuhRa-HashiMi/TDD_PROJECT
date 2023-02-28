require 'rspec'
require_relative '../solver'

describe Solver do
  solver = Solver.new

  describe '#factorial' do
    it 'raises an error if the given number is negative' do
      expect { solver.factorial(-1) }.to raise_error('Negative numbers not allowed')
    end

    it 'returns the factorial of the given number' do
      expect(solver.factorial(4)).to eq 24
    end

    it 'returns the factorial of the given number' do
      expect(solver.factorial(1)).to eq 1
    end

    it 'returns the factorial of the given number' do
      expect(solver.factorial(0)).to eq 1
    end
  end

  context 'Check the factorial of -12 is Argument Error' do
    it 'Check the factorial by negative num' do
      expect { subject.factorial(-2) }.to raise_error('Negative numbers not allowed')
    end
  end
  context 'Check add using in correct output' do
    it 'Check the false value of factorial 10' do
      fac = subject.factorial(10)
      expect(fac).not_to eql(100)
    end
  end
end

describe '#reverse_string' do
  subject { Solver.new }

  context 'check the revers of string hello' do
    it 'Should be return olleh' do
      expect(subject.reverse_string('hello')).to eql('olleh')
    end
  end

  context 'Check the revers of string hello incorrect way' do
    it 'Should be return olleh' do
      expect(subject.reverse_string('hello')).not_to eql('ollh')
    end
  end
end

describe '#fizzbuzz' do
  subject { Solver.new }
  context 'when number is 20 ' do
    it 'Return buzz' do
      expect(subject.fizzbuzz(20)).to eq('buzz')
    end
  end

  context 'when number is 15 ' do
    it 'Return fizzbuzz' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
    end
  end

  context 'when number is 21 ' do
    it 'Return fizz' do
      expect(subject.fizzbuzz(21)).to eq('fizz')
    end
  end

  context 'when number is 11 ' do
    it 'Return 11' do
      expect(subject.fizzbuzz(11)).to eq(11)
    end
  end
end
