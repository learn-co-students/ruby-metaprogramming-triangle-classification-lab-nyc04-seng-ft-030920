require 'pry'
class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    bottomhalflearnworks

    if @side1 == @side2 && @side1 == @side3 && @side2 == @side3 #&& @side1 != 0 || @side2 != 0 || @side3 != 0
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end

  end

  def bottomhalflearnworks
    @a = 
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || (@side1 + @side2 <= @side3) || (@side3 + @side2 <= @side1) || (@side1 + @side3 <= @side2)
      false
    else
      true
    end

    if @a != true
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
