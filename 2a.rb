logs = File.open("http_access_log")
results = "The total amount of requests is: #{logs.readlines.size}"
puts results
