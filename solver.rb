class Solver
  def factorial(number)
    raise 'Negative numbers not allowed' if number.negative?
    return 1 if [0, 1].include?(number)

    number * factorial(number - 1)
  end

  def reverse_string(string)
    string.reverse
  end

  def fizzbuzz(number)
    if (number % 15).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number
    end
  end
end
