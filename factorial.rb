def factrial(n)
  return 1 if n == 0

  return n*factrial(n-1)
end

p factrial(5)
