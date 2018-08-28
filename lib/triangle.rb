class Triangle
  # write code here
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == 0 || b == 0 || c == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
    elsif a == b && b ==c
      :equilateral
    elsif (a != b && b == c) || (a == b && b != c) || (a == c && b != c)
      :isosceles
    else a != b && b != c
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle size provided."
    end
  end
end
