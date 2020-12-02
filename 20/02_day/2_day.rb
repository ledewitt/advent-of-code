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
  p q

  count = password.count(q)
  p count

  if numbers[0] <= count
    if count <= numbers[1]
      valid += 1
    end
  end
}

p valid