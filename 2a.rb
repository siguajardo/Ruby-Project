logs = File.open("http_access_log")
puts = "The total amount of requests is: #{logs.readlines.size}"
