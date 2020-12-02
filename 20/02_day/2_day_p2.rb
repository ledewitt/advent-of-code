entries = Array.new

File.open("data.dat").each { |e| entries << e.strip.split(" ") }

# entries.split(" ")

p entries[0]

valid = 0

entries.each { |range,qualifier,password| 
  p range
  p qualifier
  p password

  numbers = range.split("-").map(&:to_i)
  p numbers
  p numbers[0]
  p numbers[1]

  q = qualifier.chars.first
  # p q

  # p password[numbers[0]-1]
  
  numbervalid = 0

  if password[numbers[0]-1] == q
    numbervalid+=1
    p "This is the first qualifying char: #{ password[numbers[0]-1] }"
  end

  if password[numbers[1]-1] == q
    p "This is the second qualifying char: #{ password[numbers[1]-1] }"
    numbervalid+=1
  end
  
  if numbervalid == 1
    valid+=1
  end

  p "-----"

#  count = password.count(q)
#  p count

#  if numbers[0] <= count
#    if count <= numbers[1]
#      valid += 1
#    end
#  end
}

p valid