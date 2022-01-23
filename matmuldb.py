import random
import time
	
n = 64
m1 = [[0]*n]*n
m2 = [[0]*n]*n

for i in range(0,n):
        for j in range(0,n):
            m1[i][j] = round(random.uniform(0,10e18),5)

for i in range(0,n):
		for j in range(0,n):
			print(m1[i][j], end=" ")
		print("\n")
            
                 
resultant_matrix = [[0]*n]*n

start = time.time()
for i in range(0,n):
	for j in range(0,n):
		for k in range(0,n):
			resultant_matrix = m1[i][k]*m2[k][j]
end = time.time()
meet_portion_time = end-start
print("Meet Portion Time: ",meet_portion_time, end="\n")
