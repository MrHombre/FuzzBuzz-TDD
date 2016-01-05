class FuzzBuzz

  def print number

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
