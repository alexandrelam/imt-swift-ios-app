var c1: Complexe = Complexe(reel: 2.0, imaginaire: 4.0)

print(c1.description)
print(c1.distance())
print(c1.argument)

var c2: Complexe = Complexe(reel: 1.0, imaginaire:1.0)
print(c2.description)
print(c2.distance())
print(c2.argument)

var sum: Complexe = c1.sum(complexe: c2)
print(sum.description)

var mul: Complexe = c1.mul(complexe: c2)
print(mul.description)
