def square(x):
    return x * x

def sum_of_squares(a, b):
    return square(a) + square(b)

print(sum_of_squares(3, 4))
print(square(-1))

from math import sqrt, pow
def distance(x1, y1, x2, y2):
    return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))
print(distance(1, 1, 1, 2))
print(distance(1, 3, 1, 1))
print(distance(1, 2, 3, 4))

def cube(x):
    return x * x * x

def run_test():
    print("should be 1:", cube(1))
    print("should be 8:", cube(2))
    print("should be 27:", cube(3))

run_test()

