def solution(n):
    answer = []
    sol = list(str(n))
    for i in range(len(sol)):
        answer.append(int(sol.pop()))
    return answer