import random
	
def generate_random_sequence(goal, characters): #Função que gera a sequência aleatória de 28 caracteres
	sequence = ""
	for i in range(len(goal)):
		sequence += characters[random.randint(0, len(characters)-1)]
	return sequence
	
def get_mutated_sequence(sequence, goal, characters,score):#Função que retorna a sequencia modificada que mais se parece com a meta (com o melhor score) 
	sequence_list = get_sequence_mutations(sequence, characters)
	best_seq = sequence_list[0]
	best_similarity_factor = get_score(best_seq, goal)
	for seq in sequence_list:
		similarity_factor = get_score(seq, goal)		
		if similarity_factor > best_similarity_factor:
			best_similarity_factor = similarity_factor
			best_seq = seq
	score = best_similarity_factor

	return best_seq, score
	
def get_sequence_mutations(sequence, characters): #Função que gera 100 cópias modificadas da sequência atual
	sequence_list = []
	for i in range(100):
		sequence_list.append(mutate_sequence(sequence, characters))
	return sequence_list
	
def mutate_sequence(sequence, characters):#Função que retorna uma sequência modificada aleatoriamente com 5% chance de mutação
	result = ""
	for i in range(len(sequence)):
		if random.randint(0, 100) <= 5:
			result += characters[random.randint(0, len(characters)-1)]
		else:
			result += sequence[i]
	return result
	
def get_score(sequence, goal):#Função para obter o score de ua sequência
	score = 0
	for i in range(len(goal)):
		if goal[i] == sequence[i]:
			score += 1
	return score

def main():
	score = 0
	goal = "METHINKS IT IS LIKE A WEASEL"
	characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
	generations = 0
	current_sequence = generate_random_sequence(goal, characters)
	print("Generation:", generations,current_sequence, "| Score:", score)
	while current_sequence != goal:
		current_sequence,score = get_mutated_sequence(current_sequence, goal, characters,score)
		generations += 1
		print("Generation:", generations,current_sequence, "| Score:", score)
		
main()

