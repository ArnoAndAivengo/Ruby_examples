def fibonacci(x)
  if x < 3
    1
  else
    fibonacci(x - 1) + fibonacci(x - 2)
  end
end

(1..16).each {|x| puts "#{fibonacci(x)}, "}
puts "..."