test = [i for i in range(0, 100, 2)]

for x in range(0, 100000):
    for y in range(0, 100):
        if y in test:
            pass


