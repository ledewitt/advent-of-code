total = 0

File.foreach("data") { |line|
  result = line.strip.split("x").map(&:to_i) 
  # result = line.strip.split("x").map { |num| num.to_i }
  perimeter = result.sort.first(2).reduce { |x,y| (x+y)*2 }
  volume = result.reduce(:*) 
  # volume = result.reduce { |lwh,acc| lwh*acc }
  total += perimeter + volume
}

p total