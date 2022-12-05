def string_zoodller(str):
	ranges = str.split(',')

	first_range = ranges[0].split('-')
	second_range = ranges[1].split('-')

	if int(first_range[0])<int(second_range[0]) and int(first_range[1])<int(second_range[0]):
		return 0
	elif int(first_range[0])>int(second_range[1]) and int(first_range[1])>int(second_range[1]):
		return 0
	else:
		return 1
	

with open('input.dat') as f:
	score = 0
	for line in f:
		line = line.strip()

		score += string_zoodller(line)

	print(score)