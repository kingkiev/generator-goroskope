import random

times = ["утром", "днём", "вечером", "ночью", "после обеда", "перед сном"]
advices = ["ожидайте", "предостерегайтесь", "будьте открыты для"]
promises = ["гостей из забытого прошлого", "встреч со старыми знакомыми", "неожиданного праздника", "приятных перемен"]

def generate_prophecies(total_num=5, num_sentences=3):
	prophecies = []

	for i in range(total_num):
	    elem = ""
	    for g in range(num_sentences):
		    t = random.choice(times)
		    a = random.choice(advices)
		    p = random.choice(promises)
		    
		    elem += f"{t.capitalize()} {a} {p}{'.'}"
		    if g < (num_sentences - 1):
			    elem += " "
	    prophecies.append(elem)

	return prophecies
