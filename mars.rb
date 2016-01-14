puts "plateau size"
plateau = gets.chomp.split

xmax = plateau[0].to_i
ymax = plateau[1].to_i

p "Where is the Rover?"
rover_init = gets.chomp.split

x = rover_init[0].to_i
y = rover_init[1].to_i
d = rover_init[2]
puts "#{x},#{y},#{d}"


x  xmax
