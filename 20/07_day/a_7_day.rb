Class Bags_in_bags
  def initialize(list_of_colors, list_of_bags)

  @list_of_colors = list_of_colors
  @list_of_bags = list_of_bags
  @count = 0

  end

end

bag_rules = File.open("data.dat").read.split("\n")

