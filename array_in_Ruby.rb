# Purpose:学习Ruby中的数组
# Author：赵庶林
# Date：2014/7/4

months =  Array.new
puts months.empty?

months = Array.new[12]

puts months.inspect
p months

month = Array.new(12, "month")
p month
puts month.size
puts month.length

month.clear
puts month.empty?

odd_num = Array.new(10) { |i| i = i * 2}
p odd_num

month_abbrv = Array.[]("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
p month_abbrv

month_abbrv = Array["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]
p month_abbrv

digits = Array(0..9)
p digits

donald_duck_nephews = Array("Huey" "Dewey" "Louie")
p donald_duck_nephews

donald_duck_nephews = Array["Huey", "Dewey", "Louie"]
p donald_duck_nephews

string_array = %w[nil I love it !]
p string_array

hodge_podge = ["January", 1, :year, [2006,01,01]]
p hodge_podge
hodge_podge.each{ |i| print i.class, " "}

q = %w[January February March]
puts q[0]
puts q[1]
puts q[2]

puts q[3]
puts q[-1]

puts q.first
puts q.last

puts q.first 2
puts q.last 0

puts q.index "January"

year = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009]
p year
p year[7...9]
p year[7..9]

p year.slice(1)
p year.slice(0, 4)
p year.slice(0..2)
p year.slice(0...2)

puts year.include? 2004
puts year.include? 2014

q1 = %w[January February March]
q2 = %w[April May June]
q3 = %w[July August September]
q4 = %w[October November December]

half1 = q1 + q2
half2 = q3 + q4
year = half1 + half2

p half1
p half2
p year

tue = ["shop", "make pie", "sleep"]
wed = ["shop", "read", "sleep"]
p tue & wed
p tue | wed

shopping_list = %w[ cheese bread milk cheese]
p shopping_list
p shopping_list.uniq
p shopping_list
shopping_list.uniq!
p shopping_list

fruit = %w[apple orange banana]
fruit.pop
p fruit
fruit.push "mango"
p fruit

a = ["full", 40, "yes"]
b = ["part", 20, "no"]
c = ["full", 40, "yes"]

puts a == b
puts a == c

a = %w[a b c]
p a.insert(0, "d")

greeting = ["Hello", "Bonjour", "Guten Tag"]
puts greeting.to_s
puts greeting.join
puts greeting.join ", "
puts greeting.compact.join(", ")

dates = [1, 2, 3, 4]
p dates
dates.shift
p dates

dates.unshift(0, 1)
p dates

p dates.delete(1)
p dates
p dates.delete_at(3)
p dates

x = [2, 4, 3, 4, 5, 12, 42]
p x
p x.sort!
p x.reverse
p x

d2 = [ ["Hello", 2007], ["my", 4], ["cat", 33]]
p d2
p d2.flatten
p d2.transpose


