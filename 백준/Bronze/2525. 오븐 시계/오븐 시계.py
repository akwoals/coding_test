a,b= input().split()
a= int(a)
b= int(b)
c= input()
c= int(c)

t = b+c

if t>=60:
    h = (t//60)+a
    if h>=24:
        h-=24
    m = (t%60)
    print(h,m)
else:
    print(a,t)