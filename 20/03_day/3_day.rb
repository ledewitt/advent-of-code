rows = Array.new

step_right = 3
step_down = 1

numb_trees = 0

position = [0,0]  # At Start

File.open("data.dat").each { |r| rows << r.strip }

row_length = rows[0].size

rows.each { |i|

  if i[position[1]] == "#"
    numb_trees += 1
  end

    p "#{position} Where I look if there is a tree."
    p i[position[1]]


  position[1] += step_right

  if position[1] > row_length - 1
    position[1] -= row_length
  end

   p position
}

p numb_trees