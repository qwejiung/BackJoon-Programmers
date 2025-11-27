M = int(input())
arr = map(int,input().split())

result = []
for i in arr:
    success = False
    for j in range(2,i):
        if i % j == 0:
            success = True
            break
    if success is False and i != 1:
        result.append(i)
            
print(len(result))
