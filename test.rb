require "./methods.rb"

day = Hash.new(0)

File.open('http_access_log', 'r+') do |file|
  new_file = File.new('logtest.txt', 'w+')

  file.each do |line|

  if line.ruby_safeguard

    next

  end

  time = line[/.+Oct\/1994.+/]

  while line = file.gets
    new_file.puts time

  end
  end
end
