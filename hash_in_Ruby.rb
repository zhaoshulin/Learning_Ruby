# Purpose: Learning Hash in Ruby.
# Author: 赵庶林
# Date: 2014/07/09

#默认值为：nil
months = Hash.new
puts months.empty?
puts months[0]

puts months.size
puts months.length

#默认值为：default_month; 
months = Hash.new "default_month"
puts months[0]

christmas_carol = Hash[:name, "Ebenezer Scrooge", :partner, "Jacob Marley", :employee, "Bob Cratchit", :location, "London", :year, 1843]
p christmas_carol

months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
p months

months = {"jan" => "January", "feb" => "February", "mar" => "March"}
p months

p months["jan"]
puts months.has_key? "jan"
puts months.has_value? "January"


p months.keys
p months.values

puts months.index "January"

months.each {|key, value| puts "#{key}/#{value}"}
months.each_key{|key| print key, " "}
months.each_value{|value| print value, " "}

months["apr"] = "April"
p months


