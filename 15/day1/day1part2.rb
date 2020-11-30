
string = open("data") { |x|
   x.read
}

i = 0

string.chars.each.with_index { |x,index| 
  if x == "("
    i += 1
  else
    i -= 1
  end

  if i == -1
    puts "#{index+1} is the count where Santa gets off."
    break
  end
}