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
  # Check for errors
  is_a_side_length_zero_or_negative = a <= 0 || b <= 0 || c <= 0
  a_side_length_constraint = a > (b - c).abs && a < b + c
  b_side_length_constraint = b > (a - c).abs && b < a + c
  c_side_length_constraint = c > (a - b).abs && c < a + b
  length_constraint = a_side_length_constraint && b_side_length_constraint && c_side_length_constraint
  is_this_triangle = !is_a_side_length_zero_or_negative && length_constraint
  if !is_this_triangle
    raise TriangleError
  end

  if a == b and b == c
    :equilateral
  elsif a == b or a == c or b == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
