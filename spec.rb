require "minitest/autorun"
require_relative 'fuzzbuzz'

describe "FuzzBuzz" do

  before do
    @fb = FuzzBuzz.new
    @number = 15*rand(1..100) + 1
  end

  it "returns Fuzz for multiples of 3" do
    @fb.print(3*@number).must_equal "Fuzz"
  end

  it "returns Buzz for multiples fo 5" do
    @fb.print(5*@number).must_equal "Buzz"
  end

  it "returns FuzzBuzz for multiples fo 15" do
    @fb.print(15*@number).must_equal "FuzzBuzz"
  end
end
