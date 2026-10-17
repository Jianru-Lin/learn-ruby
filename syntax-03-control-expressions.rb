if true
  puts "true branch"
elsif false
  puts "elsif false branch"
else
  puts "else branch"
end

puts (if true then 100 else 200 end)
puts true ? 100 : 200

unless false
  puts "unless branch"
else
  puts "unlese else branch"
end

(puts "yes") if true
(puts "yes") unless false

case "hello"
when /^h/
  puts "start with h"
else
  puts "not start with h"
end

a = 100
case a
when 100, 200
  puts "a is 100, 200"
when 300, 400
  puts "a is 300, 400"
else
  puts "a is somthing else"
end

a = 0
while a < 10 do
  puts a
  a += 1
end

a = 0
until a > 10 do
  puts a
  a += 1
end

for value in [1, 2, 3] do
  puts value
end

a = 0
a += 1 while a < 10
puts a

a = 0
a += 1 until a > 10
puts a

a = 0
begin
  a += 1
end while a < 10
puts a
