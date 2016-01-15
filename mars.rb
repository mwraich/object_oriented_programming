puts "plateau size"
plateau = gets.chomp.split

xmax = plateau[0].to_i
ymax = plateau[1].to_i

p "Where is the Rover?"
rover_init = gets.chomp.split

x = rover_init[0].to_i
y = rover_init[1].to_i
d = rover_init[2].upcase
puts "#{x},#{y},#{d}"
#
puts "How are you moving? Left (L), Right(R) or Move (M)?"
movement = gets.chomp.split.upcase
put movement
end
#  rotate(d)
# puts direction
# direction = ["N","E","S","W"]
#
# def rotate(direction)
# if  "L"
#   direction =directions[direction.index(direction)-1]
# elsif "R"
#    direction = directions[direction.index(direction)+1]
# end
