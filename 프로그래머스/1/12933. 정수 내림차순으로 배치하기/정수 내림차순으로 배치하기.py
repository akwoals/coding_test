def solution(n):
    answer = 0
    sol =list(str(n))
    sol.sort(reverse=True)
    answer = int("".join(sol))
    return answer