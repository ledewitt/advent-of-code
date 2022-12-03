# Assign Priority
def priority(char):
	if (char == 'a'):
		return 1
	elif (char == 'b'):
		return 2
	elif (char == 'c'):
		return 3
	elif (char == 'd'):
		return 4
	elif (char == 'e'):
		return 5
	elif (char == 'f'):
		return 6
	elif (char == 'g'):
		return 7
	elif (char == 'h'):
		return 8
	elif (char == 'i'):
		return 9
	elif (char == 'j'):
		return 10
	elif (char == 'k'):
		return 11
	elif (char == 'l'):
		return 12
	elif (char == 'm'):
		return 13
	elif (char == 'n'):
		return 14
	elif (char == 'o'):
		return 15
	elif (char == 'p'):
		return 16
	elif (char == 'q'):
		return 17
	elif (char == 'r'):
		return 18
	elif (char == 's'):
		return 19
	elif (char == 't'):
		return 20
	elif (char == 'u'):
		return 21
	elif (char == 'v'):
		return 22
	elif (char == 'w'):
		return 23
	elif (char == 'x'):
		return 24
	elif (char == 'y'):
		return 25
	elif (char == 'z'):
		return 26
	elif (char == 'A'):
		return 27
	elif (char == 'B'):
		return 28
	elif (char == 'C'):
		return 29
	elif (char == 'D'):
		return 30
	elif (char == 'E'):
		return 31
	elif (char == 'F'):
		return 32
	elif (char == 'G'):
		return 33
	elif (char == 'H'):
		return 34
	elif (char == 'I'):
		return 35
	elif (char == 'J'):
		return 36
	elif (char == 'K'):
		return 37
	elif (char == 'L'):
		return 38
	elif (char == 'M'):
		return 39
	elif (char == 'N'):
		return 40
	elif (char == 'O'):
		return 41
	elif (char == 'P'):
		return 42
	elif (char == 'Q'):
		return 43
	elif (char == 'R'):
		return 44
	elif (char == 'S'):
		return 45
	elif (char == 'T'):
		return 46
	elif (char == 'U'):
		return 47
	elif (char == 'V'):
		return 48
	elif (char == 'W'):
		return 49
	elif (char == 'X'):
		return 50
	elif (char == 'Y'):
		return 51
	elif (char == 'Z'):
		return 52
	else:
		print("Something is incorrect.")

def find_dup(first, second):
	print(first)
	print(second)

	for ch in first:
		if ch in second:
			#print(ch)
			return ch
			break

# Split the string
def compare_string(str):
	print(str)
	str_length = len(str)
	print(str_length)
	f_compartment = slice(0,str_length//2)
	s_compartment = slice(str_length//2,str_length)
	print(f'First: {str[f_compartment]} Second: {str[s_compartment]}')
	dup = find_dup(str[f_compartment], str[s_compartment])
	#print(dup)
	#priority(dup)
	return priority(dup)
	#score = priority(dup)
	#print(f'{score}')

with open('input.dat') as f:
	score = 0
	for line in f:
		line = line.strip()
		score += compare_string(line)

	print(score)
