def eratosthene(n):
    P = [ ]
    for i in range(2,n+1):
        if len(P) == 0:
            P.append(i)
        else:
            prem = True
            for k in P:
                if i % k == 0:
                    prem = False
            if prem == True:
                P.append(i)
    
    return P

guess = 600851475143


print(eratosthene(guess)[-1])