require "pry"

class Triangle
  # write code here
  attr_accessor :sides, :a, :b, :c

  def initialize(a, b, c)
    @sides = [a, b, c]
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @sides.any?(&:negative?) || @a >= @b + @c || @b >= @a + @c || @c >= @b + @a
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end

triangle = Triangle.new(2, 2, 2)
triangle1 = Triangle.new(2, 4, 2)
triangle2 = Triangle.new(2, 3, 4)
triangle3 = Triangle.new(-2, 2, 2)
triangle4 = Triangle.new(2, 2, 2)

binding.pry