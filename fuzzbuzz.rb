class FuzzBuzz

  def print(numbers)
    if numbers.respond_to?("each")
      output = []
      numbers.each do |number|
        output << test(number)
      end
    else
      output = test numbers
    end
    output
  end


private
  def test number

    if number%15 == 0
      "FuzzBuzz"
    elsif number%3 == 0
      "Fuzz"
    elsif number%5 == 0
      "Buzz"
    else
        number.to_s
      end
    end

  end
