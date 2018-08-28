class Triangle
  # write code here
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b ==c
      :equilateral
    elsif a!=b && b=c || a==b && b!=c || a==c && b!=c
      :isosceles
    elsif a != b && b != c
      :scalene
    end
  end
  #
  # class TriangleError < Standard Error
  #
  # end
end
