class Matrix(object):
    """ Basic representation of a matrix (2D array). """
    def __init__(self, matrix_string):
        # matrix as a list of lists
        self.matrix = [[int(i) for i in x.split()]
                       for x in matrix_string.split("\n")]

    def row(self, index):
        return self.matrix[index - 1]

    def column(self, index):
        return [x[index - 1] for x in self.matrix]
