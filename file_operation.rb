# purpose: This is a test file for me to learn Ruby.
# Author: 赵庶林
# Date: 2014/07/14

#Dir.mkdir("./user/zsl")
#home = Dir.pwd
#p home

file = File.new("test_new.rb", "w")

file = File.open("test_open.txt")
file.each{|line| print "#{file.lineno}. ", line}
file.close

ARGV << "test.open.txt"
p ARGV

ios = IO.new(1)
ios.putc "z"
ios.putc "s"
ios.putc "l"
ios.getc


