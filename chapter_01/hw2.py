# Q1
def product(n, term):
    """Return the product of the first n terms in the sequence formed
    by applying term to the integers 1, ..., n.

    term -- a function that takes one argument
    """
    "*** YOUR CODE HERE ***"
    result = 1
    while n >= 1:
        result = result * term(n)
        n = n - 1
    return result

def factorial(n):
    """Return n factorial by calling product.

    >>> factorial(4)
    24
    >>> factorial(3)
    6
    """
    "*** YOUR CODE HERE ***"
    return product(n, lambda x: x)

# Q2
def accumulate(combiner, start, n, term):
    """Return the result of combining the first n terms in a sequence.

    *** YOUR DESCRIPTION HERE ***
    """
    "*** YOUR CODE HERE ***"
    result = start
    while n >= 1:
        result = combiner(result , term(n))
        n = n - 1
    return result

from operator import add
def summation_using_accumulate(n, term):
    """An implementation of summation using accumulate."""
    "*** YOUR CODE HERE ***"
    return accumulate(add, 0, n, term)

def sum(n):
    """Return n sum by calling summation_using_accumulate.

    >>> sum(4)
    10
    >>> sum(3)
    6
    """
    return summation_using_accumulate(n, lambda x: x)


from operator import mul
def product_using_accumulate(n, term):
    """An implementation of product using accumulate."""
    "*** YOUR CODE HERE ***"
    return accumulate(mul, 1, n, term)

def factorial2(n):
    """Return n factorial by calling product_using_accumulate.

    >>> factorial(4)
    24
    >>> factorial(3)
    6
    """
    return product_using_accumulate(n, lambda x: x)

# Q3
def double(f):
    """Return a function that applies f twice.

    f -- a function that takes one argument
    """
    "*** YOUR CODE HERE ***"
    return lambda x: f(f(x))

# Q4
def repeated(f, n):
    """Return the function that computes the nth application of f.

    f -- a function that takes one argument
    n -- a positive integer

    >>> repeated(square, 2)(5)
    625
    """
    "*** YOUR CODE HERE ***"
    def nth_the_f(number):
        nonlocal n
        while n >= 1:
            number = f(number)
            n = n - 1
        return number
    return nth_the_f

def square(x):
    """Return x squared."""
    return x * x

def compose1(f, g):
    """Return a function h, such that h(x) = f(g(x))."""
    def h(x):
        return f(g(x))
    return h

