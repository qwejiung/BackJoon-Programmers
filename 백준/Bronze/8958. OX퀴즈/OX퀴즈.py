n = int(input())

matrix = [input() for _ in range(n)]



for i in range(n):
    score = [0] * len(matrix[i])
    s = 0
    for j in range(len(matrix[i])):
        if matrix[i][j] == 'O':
            s+=1
            score[j] = s
        else:
            s = 0
    print(sum(score))
            