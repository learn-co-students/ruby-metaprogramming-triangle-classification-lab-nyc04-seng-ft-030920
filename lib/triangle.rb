require 'pry'
class Triangle
attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    if !valid_triangle
      raise TriangleError
    end
  end

  def valid_triangle
    (@side_1 + @side_2) > @side_3 &&
    (@side_1 + @side_3) > @side_2 &&
    (@side_3 + @side_2) > @side_1
  end

  def make_side_array
    [@side_1, @side_2, @side_3]
  end

  def num_eq_sides
    unique_sides = make_side_array.uniq
    unique_sides.count 
  end

  def kind
    case num_eq_sides
    when 3
      :scalene
    when 2
      :isosceles
    else
      :equilateral
    end
  end

  class TriangleError < StandardError
  end

end
