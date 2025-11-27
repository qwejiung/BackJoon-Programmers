N = int(input())

arr = list(map(int, input().split()))

max_score = max(arr)
sum = 0
for i in range(N):
    new_score = arr[i]/max_score * 100
    sum += new_score
    
print(sum/N)