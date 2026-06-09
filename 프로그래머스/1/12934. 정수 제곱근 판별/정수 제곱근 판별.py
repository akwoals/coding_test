def solution(n):
    answer = 0
    i = int(n**0.5)
    if i*i ==n:
        return (i+1) ** 2
    else:
        return -1