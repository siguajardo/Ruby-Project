require "./methods.rb"

reqfile = {}

logfiles = File.open("http_access_log" , "r")

logfiles.each_line do |line|

reqfile[find_rfile] += 1

puts reqfile

sorted = reqfile.sort {|k,v| v[1].to_i <=> k[1].to_i }.to_h

max_file = sorted.first

puts "The most requested file is #{max_file[0]} with #{max_file[1]} request"

puts "...................................................................."

min_file = sorted.min_by(&:last)

puts "The least requested file is #{min_file[0]} with #{min_file[1]} request"
