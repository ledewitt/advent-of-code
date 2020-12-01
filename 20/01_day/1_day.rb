numbers = Array.new

File.open("data.dat").each { |l| numbers << l.strip.to_i }

combos = numbers.combination(2).to_a

combos.each { |x,y| 
  if x+y == 2020
    p x
    p y
    p x*y
  end
}

combos_of_3 = numbers.combination(3).to_a

combos_of_3.each { |x,y,z|
  if x+y+z == 2020
    p x*y*z
  end
}

# p combos

