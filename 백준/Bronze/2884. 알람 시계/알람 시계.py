h,m = input().split()
h = int(h)
m= int(m)
t= m-45
    
if t <0:
    t= 60+t
    h = h-1
    if h < 0:
         h= 23
    print(h,t)
else:
    print(h,t)