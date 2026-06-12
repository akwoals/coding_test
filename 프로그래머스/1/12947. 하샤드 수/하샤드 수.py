def solution(x):
    num = sum(int(i) for i in str(x))
    if x % num ==0:
        answer = True
    else:
        answer = False
    return answer