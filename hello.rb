name = ARGV[0] if ARGV[0]
loop do
  name = STDIN.gets.chomp if name.nil?
  puts "Hello, #{name}!"
  name = nil
end
