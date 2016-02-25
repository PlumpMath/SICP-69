def max(a, b):
    if a >= b:
        return a
    else:
        return b

def expt(base, power):
    result = 1
    while power >= 1:
        result = result * base
        power = power - 1
    return result

def factor(n):
    fc = n
    while fc >= 1:
        if n % fc == 0:
            print(fc)
        fc = fc - 1

def run_test():
    assert max(1, 2) == 2, "max(1, 2) should be 2"
    assert max(3, 3) == 3, "max(3, 3) should be 3"
    assert expt(2, 3) == 8, "expt(2, 3) should be 8"
    assert expt(3, 2) == 9, "expt(3, 2) should be 9"
    assert expt(3, 3) == 27, "expt(3, 3) should be 27"
    factor(20)
    factor(10)
run_test()