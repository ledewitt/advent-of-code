with open('input.txt') as f:
	points = 0
	for line in f:
		line = line.strip()
		# print(line)
		if (line == 'A X'):
			points += 3
		elif (line == 'A Y'):
			points += 4
		elif (line == 'A Z'):
			points += 8
		elif (line == 'B X'):
			points += 1
		elif (line == 'B Y'):
			points += 5
		elif (line == 'B Z'):
			points += 9
		elif (line == 'C X'):
			points += 2
		elif (line == 'C Y'):
			points += 6
		elif (line == 'C Z'):
			points += 7
		else:
			print('Something is wrong')

	print(f'Score is: {points}')
		
		
