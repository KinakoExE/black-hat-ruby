file1, file2, file3 = ARGV
orig_file = File.read(file1)
sec_file = File.read(file2)
separator = "*----------[#{file2}]----------*"
output = [orig_file, separator, sec_file]
File.open(file3, 'wb') do |stg|
  output.each do |f|
    stg.puts f
  end
end
