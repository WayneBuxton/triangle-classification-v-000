require "pry"
class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    #binding.pry
  end

  def kind
    {
    if @side_1 <= 0 && @side_2 <= 0 && @side_3 <= 0 return raise TriangleError;
    if @side_1 == @side_2 && @side_2 == @side_3 return :equilateral;
    if @side_1 != @side_2 && @side_2 == @side_3 return :isosceles;
    if @side_2 != @side_1 && @side_1 == @side_3 return :isosceles;
    if @side_1 == @side_2 && @side_2 != @side_3 return :isosceles;
    if @side_1 != @side_2 && @side_2 != @side_3 return :scalene;
    }
  end
end

class TriangleError < StandardError
end
