def eratosthene():
    P = [2]

    i = 3
    while(P[-1] <= 2000000):
        if len(P) == 0:
            P.append(i)
            i += 1
        else:
            prem = True
            for k in P:
                if i % k == 0:
                    prem = False
            if prem == True:
                P.append(i)
            i += 1
    
    return P

def sum(lst):
    s = 0
    for elt in lst:
        s = s + elt
    return s

print(sum(eratosthene()))