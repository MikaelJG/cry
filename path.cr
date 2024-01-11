path = "example.txt"

# create new file and write to it

file = File.new path, "w"
file.puts "first line ever"
file.puts "second line ever"
file.close


lines = [] of String
idx = 0

# file = File.open path, "w"
# file.puts "a line"
# file.close

File.each_line(path, chomp: true) do |line|
    lines << line
end

lines.each do | line |
    puts line 
end

