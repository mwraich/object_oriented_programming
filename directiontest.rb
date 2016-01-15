#Setting the class Rover part
class Rover
attr_accessor :x, :y, :direction, :name
  def initialize(x, y, direction, name)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.upcase
    @name = name
  end

  def self.set_plateau
  puts "plateau size"
  plateau = gets.chomp.split("")

  @@xmax = plateau[0].to_i
  @@xmin = 0
  @@ymax = plateau[1].to_i
  @@ymin = 0
end

def move(forward)
  if @direction == "N"
    if @y + 1 < @@ymax
    @y += 1
    else
      puts "Nice try sucker"
    end
  elsif @direction == "S"
    if @y - 1 > @@ymin
    @y -= 1
    else
      puts "Nice try sucker"
    end
  elsif @direction =="E"
    if @x + 1 < @@xmax
    @x += 1
    else
      puts "Nice try sucker"
    end
  elsif @direction == "W"
    if @x - 1 > @@xmin
    @x -= 1
    else
      puts "Nice try sucker"
    end
  else
    puts "Where in the world are you?"
  end
end

def rotate(left_or_right)
  facing = ["N","E","S","W"]
if  left_or_right == "L"
  final = facing[facing.index(@direction)-1]
   @direction = final
elsif left_or_right == "R"
   final = facing[(facing.index(@direction)+1) % facing.length]
    @direction = final
 else
   puts "error"
 end
end
#
# def left
#   if @direction == "N"
#     @direction = "W"
#   elsif
#     @direction == "W"
#     @direction = "S"
#   elsif
#     @direction == "S"
#     @direction = "E"
#   elsif
#     @direction == "E"
#     @direction = "N"
#   end
# end
# def right
#     if @direction == "N"
#     @direction = "E"
#   elsif
#     @direction == "E"
#     @direction = "S"
#   elsif
#     @direction == "S"
#     @direction =  "W"
#   elsif
#     @direction == "W"
#     @direction = "N"
#   end
# end
  def display
    puts "Current location of #{@name} is #{@x}, #{@y}, #{@direction}"
  end

def do_stuff(movement)
  movement.each do |shift|
    if shift.upcase! == "R"
      rotate(shift)
    elsif shift == "L"
      rotate(shift)
    elsif shift  == "M"
      move(shift)
    else
      puts "What do you want?"
    end
  end
end
end

#Determining plateau size
Rover.set_plateau

  puts "Where is Elon?"
  start = gets.chomp.split("")

  x = start[0]
  y = start[1]
  direction = start[2]

  elon = Rover.new(x,y, direction, "Elon")

  puts "How are you moving? Left (L), Right(R) or Move (M)?"
  movement = gets.chomp.split("")

    puts "Where is Musk?"
    startm = gets.chomp.split("")

    xm = startm[0]
    ym = startm[1]
    directionm = startm[2]

    musk = Rover.new(xm,ym, directionm, "Musk")

    puts "How are you moving? Left (L), Right(R) or Move (M)?"
    movementm = gets.chomp.split("")

    elon.do_stuff(movement)
    elon.display

    musk.do_stuff(movementm)
    musk.display

# movement.each do |movement|
#   x.upcase
#   if "L" || "R"
#      rotate(movement)
#   else "M"
#      move
#   end
# end


#
# def move
# end
# end
# #
#   class Elon < Rover
#   end
#   Elon.rotate(movement)
