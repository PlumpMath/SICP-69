from operator import add, sub
def a_plus_abs_b(a, b):
    """return a + abs(b), but without calling abs."""
    if b >= 0:
        op = add
    else:
        op = sub
    return op(a, b)

from math import pow
def two_of_three(a, b, c):
    """return x**2 + y**2, where x and y are the two largest of a, b, c."""
    return pow(max(a, b), 2) +  pow(max(min(a, b), c), 2)

def hailstone(n):
    """Print the hailstone sequence starting at n, returning its length."""
    length = 0
    while n != 1:
        print(n)
        length = length + 1
        if n % 2 == 0:
            n = n / 2
        else:
            n = n * 3 + 1
    return length


def run_test():
    print(a_plus_abs_b(1, 2))
    print(a_plus_abs_b(1, -2))
    print(a_plus_abs_b(2, 0))
    print(a_plus_abs_b(2, 2))
    print(two_of_three(1, 2, 3))
    print(two_of_three(3, 5, 4))
    print("length is:", hailstone(27))
run_test()