require 'pry'

class Triangle
  # write code here
  attr_accessor :a

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a <= 0 || b <= 0 || c <= 0) || (a + b <= c || a + c <= b || b + c <= a)
      begin
        raise TriangleError
      # rescue TriangleError => error   #in order to rescue we would include lines 17 and 18
        # error.message
      end
    elsif a == b && b ==c
      :equilateral
    elsif (a != b && b == c) || (a == b && b != c) || (a == c && b != c)
      :isosceles
    elsif a != b && b != c
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle size provided."
    end
  end
end
# binding.pry
