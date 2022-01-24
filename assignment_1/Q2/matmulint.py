import random
import time
	
n = 512
m1 = [[0]*n]*n
m2 = [[0]*n]*n

for i in range(0,n):
        for j in range(0,n):
            m1[i][j] = random.randint(0,50)
            
for i in range(0,n):
        for j in range(0,n):
            m2[i][j] = random.randint(0,50)
            
resultant_matrix = [[0]*n]*n
	
start = time.time()
for i in range(0,n):
	for j in range(0,n):
		for k in range(0,n):
			resultant_matrix = m1[i][k]*m2[k][j]
end = time.time()
meet_portion_time = end-start
print("Meet Potion Time: ",meet_portion_time, end="\n")
