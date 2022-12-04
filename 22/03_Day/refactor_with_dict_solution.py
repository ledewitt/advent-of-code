l_alphabet = [chr(value) for value in range(ord('a'), ord('a') + 26)]
u_alphabet = [chr(value) for value in range(ord('A'), ord('A') + 26)]

alphabet = l_alphabet + u_alphabet

alpha_dict = dict(zip(alphabet, range(len(alphabet))))

def find_common_letter(arr):
	badge_letter = list(set(arr[0])&set(arr[1])&set(arr[2]))
	return badge_letter

with open('input.dat') as f:
	score = 0
	trio = []
	for line in f:
		line = line.strip()
		trio.append(line)

		if len(trio) == 3:
			# At this point I have an array with 3 strings
			# Need to look for the common letter

			letter = find_common_letter(trio)
			value = alpha_dict[letter[0]] + 1
			score += value
			trio = []
	print(score)