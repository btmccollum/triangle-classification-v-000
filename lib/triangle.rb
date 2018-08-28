class Triangle
  # write code here
  def kind(a, b, c)
    if a == b && b ==c
      :equilateral
    elsif a!=b && b=c || a==b && b!=c || a==c && b!=c
      :isosceles
    elsif a != b && b != c
      :scalene
    end
  end

  class TriangleError < Standard Error

  end
end
