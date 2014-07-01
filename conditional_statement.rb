# Purpose: Try to learn conditional statement in Ruby.
# Author: Zhao Shulin
# Date: 2014/7/1

if 1 == 1 then
	puts "1==1, true!"
end


x = 222
if x == 222
	puts "x equals 222."
end

puts "x equals 222." if x == 222

if x == 222 then puts "x equals 222" end

if x == 222 : puts "x equals 222" end

a = "a"
b = "b"
if a == "a" && b == "b"
	puts "All right!"
end

if a == "a" and b == "b"
	puts "All right!"
end

c = "c"

if a == "b" or c == "c"
	puts "Still right!"
end

if a == "b" || c == "c"
	puts "Still right!"
end

print "right." if !(a == "c")

print "right." if not(a == "c")
 
if a == "a"
	ans = true
else
	ans = false
end

puts ans

puts "ans is true!" if ans

lang = :es
if lang == :es
	print "dog"
elsif lang == :fr
	print "chien"
elsif lang == :de
	print "Hund"
else 
	puts "No langue set; default = 'dog'"
end

length = 3
label = length == 1 ? "man" : "men"
puts label

lang = :fr
dog = case lang
	when :en: "dog"
	when :es: "perror"
	when :fr: "chien"
	when :de: "Hund"
	else      "Dog"
end
puts lang 
puts dog

lang = "de"
dog = case lang
	when "en" : "dog"
	when "es" : "peero"
	when "fr" : "chien"
	when "de" : "Hund"
	else        "Dog"
end
puts dog

scale = 8
case scale
	when 0: puts "lowest"
	when 1..3: puts "medium-low"
	when 4..5: puts "medium"
	when 6..9: puts "high"
	when 10: puts "highest"
	else puts "out of scale"
end

i = 0
breeds = ["quarter", "arabian", "appalosa", "paint"]
puts breeds.size
tmp = []

while i < breeds.size do
	tmp << breeds[i].capitalize
	i += 1
end

tmp.sort!
p tmp
breeds.replace(tmp)
p breeds


i = 0
begin
	puts "Running for " + i.to_s + " times..."
	i += 1
end while i < 10

i = 0
tmp = []
while i < breeds.size
	tmp << breeds[i].capitalize
	break if tmp[i] == "Arabian"
	i += 1
end
p  tmp


i = 0
puts i += 1 unless i > 10
puts i unless i < 10


#loop do
#	puts "Type something:"
#	sth = gets
#	break if sth =~ /q|Q/
#	puts sth
#end

for i in 1..5 do
	print i, " "
end

10.times { |i| print i, " "}
1.upto(10) { |i| print i, " "}
5.downto(1) { |i| print i, " "} 

def timer(start)
	puts "Minutes: " + start.to_s
	start_time = Time.now
	puts start_time.strftime("Start to_time: %I:%M:%S %p")
	start.downto(1) { |i| sleep 60}
	end_time = Time.now
	print end_time.strftime("Elapsed time: %I:%M:%S %p")
end
#timer(1)
#timer 1

BEGIN {puts "BEGIN at time: " + Time.now.to_s}
puts "This is running between BEGIN and END..."
END {puts "END at time: " + Time.now.to_s}

