
class Rover
  attr_accessor :x, :y, :direction
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    puts "x""y"
    x,y = gets.chomp.to_i

  end

  def read_instruction
    puts "Are you going to move or turn?"
    instruction = gets.chomp
    if instruction == "move"
        insert Move
    else instruction == "turn"
      insert Turn
  end
end
end
module Move
  def move
    if "N"  @y += 1
    elsif "S" @y -= 1
    elsif "E" @x += 1
    else "W" @x -= 1
    end
  end
end

module Turn
  def turn
    orientation = ["N","E","S","W"]
    if "N" and "L"
      @direction == "W"
    elsif "L"
      @direction == orientation[] -= 1
    elsif
      @direction == orientation[] += 1
    else "W" and "R"
      @direction == "N"
    end
  end
end

# class Elon < Rover
#   puts "Initial start position Elon?"
#   location = gets.chomp
#   puts "How are you moving Elon? Left (L), Right(R) or Move (M)?"
#   movement = gets.chomp
# end
# read_instruction(Elon)
#
# class Musk < Rover
#
#   puts "Initial start position Musk?"
#   location = gets.chomp
#
#   puts "How are you moving Musk? Left (L), Right(R) or Move (M)?"
#   movement = gets.chomp
# end
