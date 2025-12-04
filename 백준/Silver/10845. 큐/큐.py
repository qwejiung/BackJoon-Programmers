import sys

input=sys.stdin.readline

N = int(input())

class MyQueue():
    def __init__(self):
        self.queue = []
    
    def push(self,X):
        self.queue.append(X)
        
    def pop(self):
        print(self.queue.pop(0)) if self.queue else print("-1")
        
    def size(self):
        print(len(self.queue))
        
    def front(self):
        print(self.queue[0]) if self.queue else print("-1")
        
    def back(self):
        print(self.queue[-1]) if self.queue else print("-1")

    def empty(self):
        print("1") if not self.queue else print("0")
        
        
queue = MyQueue()

for i in range(N):
    md = list(map(str, input().split()))
    
    if md[0] == "pop":
        queue.pop()
    elif md[0] == "push":
        queue.push(int(md[1]))
    elif md[0] == "size":
        queue.size()
    elif md[0] == "front":
        queue.front()
    elif md[0] == "back":
        queue.back()
    elif md[0] == "empty":
        queue.empty()
