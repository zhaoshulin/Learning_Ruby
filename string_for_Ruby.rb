# Purpose: 学习Ruby中的字符串
# Date: 2014/7/2
# Author: 赵庶林

title = String.new
puts title
puts title.empty?
puts title.length
puts title.size


title = String.new("First sting.")
puts title
puts title.empty?
puts title.length
puts title.size

title = String("Second string.")
puts title

sad_love_story = "Romeo and Juliet"
puts sad_love_story

name = "I\nam\nzsl."
puts name

contry = %!China!
month = %[July]
date = %(Tursday)
time = %{nine}

puts contry, month, date, time

#sonnet = <<29
#When in disgrace with forturne and men's eyes,
#I all alone beweep my outcase state.
#29
#puts sonnet

hi = "Hello," " " "Ruby!"
puts hi

hi = "Hello," + " " + "Ruby!"
puts hi

hi = "Hello," << " " << "Ruby!"
puts hi

h = "Hi, "
i = "Ruby!"
puts h.concat(i)


hi = "Hello, freeze."
hi.freeze
puts hi
#hi.concat("!") # => TypeError: cannot modify frozen string
puts hi.frozen?

line = "A horse! A horse! my kingdom for a horse!"
cite = "Act V, Scene VI"
speaker = "King Richard III"
puts speaker['King']
puts line[6]
puts line[6].chr
puts line[17, 20]

puts cite[0..4]
puts cite[0...4]

puts line[/horse!$/]
puts line[/horse$/]

puts line[/^A horse/, 0]

puts line.index("k")

puts line[line.index("k")]
puts line[line.index("k")].chr

a = "hello!"
b = "hello!"
c = "hello"

puts a == b
puts a == c

puts "a" <=> "a"
puts "b" <=> "a"
puts "b" <=> "c"

puts "a" <=> "A"
puts "a".casecmp "A"

hi = "Hello, ".downcase * 3 + "zsl"
puts hi
puts hi.capitalize

puts "Be careful!".insert 3, "very "
puts "Be careful!".insert 3, "very " * 3

line = "A Porsche! a Porsche! my kingdom for a Porsche!"
cite = "Act V, Scene V"
speaker = "King Richard 2007"
puts speaker
speaker["2007"]= "III"
puts speaker

puts cite
cite[13]= "IIIV"
puts cite

puts line
line[3, 13]= "Fuck this again! I love it!"
puts line

puts speaker
speaker[13..15]= "the Third"
puts speaker

a = "abcd.\n"
puts a
puts a.chomp!
puts a.chop!

all = "That's allll folk!"
puts all
puts all.delete "l"
puts all.delete "llllllllllllll"

puts all.delete "abcdefghijklmnopqrstuvwxyz", "^ha"

a = "That's alll forks!"
puts a 
puts a.gsub "alll", "all"

puts a
puts a.replace "This is a totally new string now."

puts a = "This is a."
puts a.object_id
puts a.replace "Using replace to change a."
puts a.object_id

puts a = "This is a."
puts a.object_id
puts a = "Using a = "..." to change a."
puts a.object_id

a = "abcd"
puts a
puts a.reverse

a = "012345"
puts a
puts a.split
a = "012345"
puts a.split( // )

"a\nnew\nstring".each{ |item| puts item.capitalize}

"matz".each_byte {|b| print b, " "}

"matz".each_byte {|b| print b.chr, " "}

out = []
"matz".each_byte {|b| p out << b}
p out

A = "THIS IS A FILE FULL OF LARGE!"
puts A.downcase
puts A.downcase.capitalize

a = "AbCd"
puts a
puts a.swapcase

title = "Love's Labours Lost"
puts title
puts title.size
puts title.ljust 23
puts title.rjust 23

puts title
puts title.ljust(25, "-")
puts title.rjust(25, "x")
puts title.center 25, "#"


title = "     This is initial title.     "
puts title
puts title.lstrip
puts title.rstrip
puts title
puts title.strip!

puts "a".next
puts "aaa".next
puts "z".next
puts "zzz".next
puts "9".next
puts "9.0".next

"a".upto("z") {|i| print i}

a = "100"
puts a.class
puts a.to_f
puts a.to_f.class

puts "name".to_sym

puts (256.0).class
puts (256.0).to_s
puts (256.0).to_s.class

opening = "When in disgrace with fortune and men's eyes\nI all alone beweep my outcast state, \n"
puts opening
puts opening.grep(/men/)
puts opening.grep(/m[ae]n/)
puts opening.grep(/men|man/)
puts opening.grep(/m(e|a)n/)

puts opening.grep(/^When in/)
puts opening.grep(/outcast state, $/)
puts opening.grep(/outcast state,$/)
puts opening.grep(/\AWhen /)
puts opening.grep(/outcast state, \z/)

phone = "(555)123-4567\n(345)344-2398\n(321)1234-347"
puts phone.grep(/[\(\d\d\d\)]?\d\d\d-\d\d\d\d/)
puts phone.grep(/[\(\d{3}\)]?\d{3}-\d{4}/)

color = "I think that colour is just right for your office."
puts color =~ /colou?r/
puts color !~ /colou?r/

