total = 0

File.foreach("data") { |line|
  result = line.strip.split("x").map { |num| num.to_i }
  total += result.combination(2).map { |(x,y)| x*y }.sort.zip([3,2,2]).map { |(x,y)| x*y }.sum
}

p total