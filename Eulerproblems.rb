i = 0
sums = 0
range = gets.chomp.to_i

while i < range
i+=1
if i % 3 == 0 || i % 5 == 0 then sums += i
end
end

puts sums
  