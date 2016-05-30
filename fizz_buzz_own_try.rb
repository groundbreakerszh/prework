for x in 1..100

if x % 3 == 0
puts "fizz"
end

if x % 5 == 0
puts "buzz"
end

if x % 3 != 0 && x % 5 != 0
puts x
end

if x % 3 == 0 && x % 5 != 0
puts "fizzbuzz"
end
end
