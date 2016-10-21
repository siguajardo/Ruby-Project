require "./way.rb"

day = Hash.new(0)

#This may look the same as other students
#Worked with Mathew Gutierrez, Nick Proctor, Alex Espinosa, and kathleen Sinor
File.open("http_access_log" , "r") do |file|
  file.each do |line|

  if line.sinclude
    next
  end

  time = line[/\[.+\]/]

  date = time[1,11]

  day[date] += 1
  end
end

day.each do |date, total|
  puts "The amount request on #{date} is #{total}"
end
