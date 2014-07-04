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


