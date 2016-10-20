require 'date'

logfiles = File.open("http_access_log","r")
errors = []
stats = {}
bymonth = {}
logfiles.each_line do | line|
  test = /.* \[(.*) .*\] "([A-Z]{3,4}) (.*) .*" (\d{3}) .*/.match(line)
  if !test then
    errors.push(line)
    next
  end

  date = test[1]
  verb = test[2]
  filetype = test[3]
  statuscode = test[4]
  real_date = Date.strptime(date, '%d/%b/%Y:%H:%M:%S')
  month = real_date.strftime('%Y%m')

  if stats[statuscode] then
    stats[statuscode] += 1
  else
    stats[statuscode] = 1
  end

  if !bymonth[month] then
    bymonth[month] = []
  end
  bymonth[month].push(line)

end
grandtotal = 0
stats.each do |k,v|
  puts "For status code #{k} we have a value of #{v}"
  grandtotal += v
end

  puts "Total number of request: #{(grandtotal)}"
  puts "Total number of errors: #{errors.count}"

bymonth.each do |key,arr|
file_name = key + '.log'
puts file_name
end
