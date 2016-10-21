#This may look the same as other students
#Worked with Mathew Gutierrez, Nick Proctor, Alex Espinosa, and kathleen Sinor
require "./way.rb"

reqfile = Hash.new(0)

File.open("http_access_log" , "r") do |f|
  f.each do |line|

  if line.sinclude
    next
  end

  find_rfile = line[/[a-zA-Z0-9]+\.[a-zA-Z1+9]+/]

  reqfile[find_rfile] += 1
  end
end

sorted = reqfile.sort {|k,v| v[1].to_i <=> k[1].to_i }.to_h

max_file = sorted.first

puts "The most requested file is #{max_file[0]} with #{max_file[1]} request"

puts "......................................................"

min_file = sorted.min_by(&:last)

puts "The least requested file is #{min_file[0]} with #{min_file[1]} request"
