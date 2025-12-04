import sys

input=sys.stdin.readline

N = int(input())

class myStack():
    def __init__(self):
        self.stack = []
    
    def push(self,X):
        self.stack.append(X)
        
    def pop(self):
        if len(self.stack) == 0:
            print("-1")
        else:
            X = self.stack.pop()
            print(X)
        
    def size(self):
        X = len(self.stack)
        print(X)
        
    def top(self):
        if len(self.stack) == 0:
            print("-1")
        else:
            X = self.stack[len(self.stack)-1]
            print(X)
            
    def empty(self):
        if len(self.stack) == 0:
            print("1")
        else:
            print("0")
        
        
stack = myStack()

for i in range(N):
    md = list(input().split())
    
    if md[0] == "pop":
        stack.pop()
    elif md[0] == "push":
        stack.push(int(md[1]))
    elif md[0] == "size":
        stack.size()
    elif md[0] == "top":
        stack.top()
    elif md[0] == "empty":
        stack.empty()
