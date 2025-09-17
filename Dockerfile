FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  went = set()\n\
  while True:\n\
    sum = 0\n\
    while n > 0:\n\
      digit = n % 10\n\
      sum += digit ** 2\n\
      n //= 10\n\
    if sum == 1:\n\
      return True\n\
    if sum in went:\n\
      return False\n\
    went.add(sum)\n\
    n = sum\n\
  return\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]