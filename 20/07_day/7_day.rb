bag_rules = File.open("data.dat").read.split("\n")

# p bag_rules[0]

def bags_in_bags (color)
  

end

count = 0
colors_to_process = ["shiny gold"]

bag_rules.each { |rule|
  p rule
  p rule.split("bags contain")
  # p x
  # p y
  break
  if rule.include? colors_to_process[0]
    # p rule
    other_colors = rule.split("bags contain").each { |thing| thing.strip }
    colors_to_process << other_colors[0]
    # p colors_to_process
    count += 1
  end
}

p count