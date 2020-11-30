
string = open("data") { |x|
   x.read
}

i = 0

string.chars.each { |x| 
  if x == "("
    i += 1
  else
    i -= 1
  end
}

puts i