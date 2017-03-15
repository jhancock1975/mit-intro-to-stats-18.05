sixDie = [1.0,2.0,3.0,4.0,5.0,6.0]

arr = []

for i in range( 0, len(sixDie) ):
    temp = (sixDie[i] - sum(sixDie)/6.0)**2
    print(temp)
    arr.append(temp)

print((sum(arr)/len(arr))**(0.5))
