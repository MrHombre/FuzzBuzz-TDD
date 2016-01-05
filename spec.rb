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

  it "returns the number as a string for all non FuzzBuzz numbers" do
    @fb.print(@number).must_equal @number.to_s
  end

  it "returns an Array object when a range is given as an argument" do
    @fb.print(1..5).must_be_instance_of Array
  end

  it "raises an error if the number is not an negative" do
    proc {@fb.print(-2)}.must_raise Argument Error
  end

  it "raises an error if the number is not an zero" do
    proc {@fb.print(0)}.must_raise Argument Error
  end

  it "raises an error if the number is not an Integer" do
    proc {@fb.print(2.5)}.must_raise Argument Error
  end
end
