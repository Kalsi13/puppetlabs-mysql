hosts.each do |h|
  on h, "echo hello"
  if h['platform'] =~ /windows/
    scp_to h, "beaker.gemspec", "/cygdrive/c/Documents\ and\ Settings/All\ Users/Application\ Data/"
  end
  on(h, "echo test block") do |result|
      puts "block result.stdout: #{result.stdout}"
      puts "block result.raw_stdout: #{result.raw_stdout}"
  end
  on(h, "echo test block, built in functions") do
      puts "built in function stdout: #{stdout}"
      puts "built in function stderr: #{stderr}"
  end

  result = on(h, "echo no block")
  puts "return var result.stdout: #{result.stdout}"
  puts "return var result.raw_stdout: #{result.raw_stdout}"

  binding.pry

end
