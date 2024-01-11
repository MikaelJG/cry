def find_todays_files(note_dir : String, date : String, ext : String) : Array(String)
  todays_files = [] of String
  Dir.glob("#{note_directory}/**/#{date}*#{file_extension}").each do |file|
    todays_file << file
  end
  todays_files 
end

# Path["~/bin"].expand(home: true) # => Path["/home/crystal/bin"]

nb_dir = Path["~/.nb"].expand(home: true)

files = [] of String

Dir.each_child(nb_dir) do |x|
    files << x
    puts "Got #{x}" # refuses . and .. as dir
end

# lines = [] of String
# idx = 0
# 
# File.each_line(path, chomp: true) do |line|
#     lines << line
# end
# 
# lines.each do | line |
#     idx += 1
#     puts "Line #{idx}: #{line} "
# end

# d = Dir.new("testdir")
# d.each_child do |x|
#     files << x
#     puts "Got #{x}" # refuses . and .. as dir
# end

# create new file and write to it

# file = File.new path, "w"
# file.puts "first line ever"
# file.close
# 
# Dir.mkdir("testdir")
# File.write("testdir/a.h", "") # touch file
