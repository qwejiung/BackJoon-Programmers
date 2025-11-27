while True:
    arr = list(map(int, input().split()))
    if sum(arr) == 0:
        break
    
    s_arr = sorted(arr)
    temp = s_arr[0]**2 + s_arr[1]**2
    if s_arr[2]**2 == temp:
        print("right")
    else:
        print("wrong")