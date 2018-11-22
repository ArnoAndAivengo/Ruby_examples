
def fac(x)
  if x === 0
    1
  else
    x * fac(x - 1)
  end
end

puts fac(5)
puts fac(2)