# My first try for Ruby, have fun ^_^

# outputs something to screen
puts "Hello, Ruby!"

# add someting to output
puts "Hello, " + "Ruby " + "again!"
puts "Hello, " << "Ruby!"

# use order of system
system "echo 'Hello, Ruby!'"
system "echo", "Hello,", "Ruby!"

# multiple
puts "Hello, Ruby!" * 3
3.times {print "Hello, Ruby!"}
puts "Hello, " * 3 + "Ruby!"

# use order of shell
puts "Hey guys, I am running " + `ruby --version`

# use variable
hi = "Hello, "
name = "zsl."
puts hi + name

# expression substitution
name = "zsl."
puts "Hello, #{name}"

# put order in shell like this: ruby first_try.rb zsl.
puts "Hello, #{ARGV[0]}"
	
# format string
hi = "Hello, %s"
puts hi % "zsl."

# eval && -e
eval "times = 3; puts 'zsl!!!' * times"
# Or you can type an order in shell like this: ruby -e "times = 3; puts 'zsl!!!' * times"

# gets from keyboard
#print "Who do you want to say hello to? type it: "
#name = gets
#puts "Hello, " + name

# method
def my_method
	puts "Enter into my_method..."
end
my_method

# block
def my_method
	yield
	# "yield" will lead to run codes in {...}
end
my_method { puts "Enter into redefined block because of yield in my_method..."}

# each
a = "This is a string."
a.each{|tmp_variable| puts tmp_variable}
a.each do |tmp_variable|
	puts tmp_variable
end

# proc using lambda
my_proc = lambda { |name| puts "Hello, " + name }
my_proc.call "zsl."

# class
class My_class
	def initialize(name)
		@name = name
	end

	def my_func
		puts "Enter into " + @name +"'s my_func in My_class..."
	end
end

hi = My_class.new("zsl")
hi.my_func





