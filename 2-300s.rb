require "./way.rb"

counter = 0.0

#This may look the same as other students
#Worked with Mathew Gutierrez, Nick Proctor, Alex Espinosa, and kathleen Sinor
File.open("http_access_log" , "r") do |file|
  file.each do |line|
    if line.sinclude
      next
    end

    if time = line[/ 3\d\d/]
      counter += 1
    end
  end
end
percent = (counter / 726739) * 100

puts "The percent of request that were not successful is #{percent.round(2)}%"
