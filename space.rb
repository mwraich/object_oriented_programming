class Rover
  attr_accessor :x, :y, :direction
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction
    puts "Are you going to move or turn?"
    instruction = gets.chomp
    if instruction = "move"
        insert Move
    elsif instruction = "turn"
      insert Turn
  end

module Move
  def move
    if N  @y += 1
    elsif S @y -= 1
    elsif E @x += 1
    else W @x -= 1
  end
end

module Turn
  def turn
    orientation = ["N","E","S","W"]
    if "N" and L
      @direction = "W"
    elsif L
      @direction = orientation[]

  end
end


end
#
# class Elon < Rover
# end
#
# class Musk < Rover
# end
