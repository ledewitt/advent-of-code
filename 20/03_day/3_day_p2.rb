def counting_trees(rows, step_right, step_down)

  numb_trees = 0

  position = [0,0]  # At Start

  row_length = rows[0].size

  rows.each.with_index { |i, index|

    if index % step_down != 0
      next
    end

    if i[position[1]] == "#"
      numb_trees += 1
    end

    position[1] += step_right

    if position[1] > row_length - 1
      position[1] -= row_length
    end
  }

  return numb_trees

end

rows = Array.new
File.open("data.dat").each { |r| rows << r.strip }

a = counting_trees(rows, 3, 1)
b = counting_trees(rows, 1, 1)
c = counting_trees(rows, 5, 1)
d = counting_trees(rows, 7, 1)
e = counting_trees(rows, 1, 2)

p a*b*c*d*e