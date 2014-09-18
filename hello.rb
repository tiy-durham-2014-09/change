if ARGV[0]
  name = ARGV[0]
else
  puts "What is your name?"
  name = STDIN.gets.chomp
end

puts "Hello, #{name}!"
