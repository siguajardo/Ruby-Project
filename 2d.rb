require "./methods.rb"

counter = 0
logfiles = File.open("/Users/shelbyguajardo/Desktop/Ruby/http_access_log")

  logfiles.each do |line|
    if line.ruby_each_day
      next
    end

    if time = line[/ 4\d\d/]
      counter += 1
    end
  end

percent = (counter / 726739) * 100
puts "Percentage of request that were not successful: #{percent.round}%"
