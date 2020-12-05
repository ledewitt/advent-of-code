boarding_passes = File.open("data.dat").read.split

#p boarding_passes

highest_seat_id = 0

boarding_passes.each { |pass|
  row = pass[0..6]
  column = pass[7..9]
  
  b_row = row.chars.map { |l|
    if l == "F"
      "0"
    else
      "1"
    end
  }
        
  b_column = column.chars.map { |l|
    if l == "L"
      "0"
    else
      "1"
    end
  }
  
  i_row = b_row.join.to_i(2)
  i_column = b_column.join.to_i(2)

  seat_id = i_row * 8 + i_column

  if seat_id > highest_seat_id
    highest_seat_id = seat_id
  end
  
  #p seat_id
  #p seat
  #p b_row.join.to_i(2)
  #p b_column.join.to_i(2)
  #p seat

}

p highest_seat_id