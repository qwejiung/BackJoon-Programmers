numbers = []
for _ in range(9):
    i = int(input())
    numbers.append(i)
    
max_index = 0
for i in range(1,9):
    if numbers[max_index] < numbers[i]:
        max_index = i
 
print(numbers[max_index])
print(max_index+1)