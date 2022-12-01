
with open('input.txt') as f:
	arr_cal = []
	elf = 1
	cals = 0
	max_elf = 0
	max_cals = 0
	for line in f:
		line = line.strip()
		if line == '':
			print(f'Im elf number: {elf}')
			print(f'Im carrying {cals} calories')
			arr_cal.append(cals)
			if cals > max_cals:
				max_elf = elf
				max_cals = cals
			elf += 1
			cals = 0
		else:
			cals += int(line)
			print(line)
	print(f'Elf {max_elf} is carrying most cals {max_cals}')
	
	arr_cal.sort()
	print(arr_cal)

	last_three = 0

	for i in range(3):
		last_three += arr_cal.pop()

	print(f'Sum of three elves carrying the most cals: {last_three}')
