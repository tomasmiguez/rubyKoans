# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a, b, c]
  
  if sides.any? { |side| side <= 0 }
    raise TriangleError.new("Lengths can´t be less than 0.\n")
  elsif sides.max() >= sides.sum - sides.max()
    raise TriangleError.new("The side of length #{sides.max()} is longer than the sum of #{sides - [sides.max()]}.\n")
  end

  if a == b and b == c
    :equilateral
  elsif a == b or b == c or c == a
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
