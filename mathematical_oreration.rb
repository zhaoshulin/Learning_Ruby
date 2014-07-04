# Purpose: 学习Ruby中的数学运算
# Author: 赵庶林
# Date: 2014/7/4

require 'rational'
require 'mathn'

puts 2.class
puts 2.0.class
puts 2_000_000_000.class
puts 2_000_000_000_000.class

puts Fixnum.ancestors

puts Object.included_modules
puts Numeric.included_modules
puts Integer.included_modules
puts Fixnum.included_modules

op = 0
if !op.zero?
	puts 12/op
else
	puts "Cannot divide by zero."
end

op = 2
if !op.zero?
	puts 12/op
else
	puts "Cannot divide by zero."
end

num = 4
if num.integer?
	puts "Invited guests: " + num.to_s
else
	puts "Only whole persons can come to this party."
end

puts 0.0.finite?
puts (-1.0/0.0).finite?
puts (1.0/0.0).finite?

puts 0.0.infinite?
puts (-1.0/0.0).infinite?
puts (1.0/0.0).infinite?

val = 1.0
val.nan?
val = 0.0/0.0
puts val.inspect
puts val.nan?

10.times{ |i| print i, " "}
10.times{ |i| print i*5, " "}

10.times do |i|
	puts 5 * i
end

#10.downto(1) {|i| print i, " "; sleep 1}


puts -49.abs

puts 4.1.ceil
puts 4.9.floor
puts 4.4999999.round
puts 4.5.round

puts -1.next
puts 0.next
puts 999.next

puts 97.chr

puts Math.constants
puts Math::E
puts Math::PI

puts Math.exp(1)
puts Math.sqrt(4)
#puts Math.log(0)
puts Math.log(Math::E)
puts Math.log10(100)

puts Rational(25/100)

prime_number = Prime.new
#puts prime_number
puts prime_number.next
puts prime_number.succ

list_primes = Prime.new
list_primes.each { |i| print i, " "; break unless i < 900}

"In the early morning astronomers spiritualized nonmathematicians".split.each{ |i| print i.length, " "}
