def is_armstrong_number(number):
    n = len(str(number))
    val = 0
    d = number
    while (d > 0):
        reminder = d % 10
        val += reminder**n
        d = d // 10

    return val == number
