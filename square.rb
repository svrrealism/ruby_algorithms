class Rectangle
  def initialize(width, height)
    raise("This is a square sir.") if width == height
    @width = width
    @height = height
    @shape = []
  end

  def area
    return @width * @height
  end

  def draw
    @char = "*\s"
    @width_line = @char * @width

    1.upto(@height) { |n|
      @shape.push(@width_line)
    }

  end
  #
  # def decorate
  #
  #   mid =
  #
  # end

  def render
    draw
    (@shape.size).times {|c| puts @shape[c]}
  end
end


class Square < Rectangle
  def initialize(width, height)
    raise("This isn't a square sir.") if width != height
    @width = width
    @height = height
    @shape = []
  end
end


rectangle = Rectangle.new(12,10)
square = Square.new(10, 10)

p rectangle.area
rectangle.render
puts
p square.area
square.render
