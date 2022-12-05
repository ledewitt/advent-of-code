def string_zoodller(str):
	ranges = str.split(',')

	first_range = ranges[0].split('-')
	second_range = ranges[1].split('-')

	# print(first_range)
	# print(second_range)

	# print(first_range[0])
	# print(first_range[1])
	# print(second_range[0])
	# print(second_range[1])

	if int(first_range[0])<=int(second_range[0]) and int(first_range[1])>=int(second_range[1]):
		# print('True case 1')
		# print(ranges)
		return 1
	elif int(first_range[0])>=int(second_range[0]) and int(first_range[1])<=int(second_range[1]):
		# print('True case 2')
		# print(f'{first_range[0]} is greater than {second_range[0]}')
		# print('and')
		# print(f'{first_range[1]} is less than {second_range[1]}')
		# print(ranges)
		return 1
	else:
		# print('Not a fully contained range pair')
		return 0
	

with open('input.dat') as f:
	score = 0
	for line in f:
		line = line.strip()

		score += string_zoodller(line)

	print(score)