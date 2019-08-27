from random import shuffle
from itertools import product
from string import ascii_uppercase, digits

class Robot(object):
    """ A little name generator (as iterable) for robots. """
    # Note that we will generate all possible combination of two letters
    # followed by 3 digits in order to ensure that we can keep a trace
    # of past or future (available names).
    prefix = [''.join(x) for x in product(ascii_uppercase, repeat=2)]
    suffix = [x.zfill(3) for x in digits]
    name_set = list(''.join(x) for x in product(prefix, suffix))
    shuffle(name_set)
    _names = iter(name_set)

    def __init__(self):
        self.name = None
        self.reset()

    def reset(self):
        try:
            self.name = next(Robot._names)
        except Exception:
            raise Exception("No new name available")
