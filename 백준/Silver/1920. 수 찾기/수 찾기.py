N = int(input())
arr = sorted(list(map(int,input().split())))

M = int(input())
arr2 = list(map(int,input().split()))


def binary_search(n,arr,start,end):
    if start > end:
        return 0
    
    mid = (start+end) // 2
    if n == arr[mid]:
        return 1
    elif n > arr[mid]:
        return binary_search(n,arr,mid+1,end)
    elif n < arr[mid]:
        return binary_search(n,arr,start,mid-1)


for i in arr2:
    s = binary_search(i,arr,0,N-1)
    print(s)