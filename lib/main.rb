require 'open-uri'         
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_fname = "hamlet.txt"

File.open(local_fname, "w") { |filename| filename.write(open(url).read) }

File.open(local_fname, "r").readlines.each_with_index do |line, idx|
   
  puts line if idx%42==41