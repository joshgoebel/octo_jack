#!/usr/bin/env ruby
content = File.read(ARGV[0])
# puts content

content.gsub!(/:include (.*)$/) do |m|
  file = m.split(" ")[1]
  File.read("#{file}.8o") + "\n\n"
end

File.open("out.8o","w") do |f|
  f.write(content)
end
