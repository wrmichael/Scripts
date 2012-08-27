puts "please enter files name: >"
filename = gets.chomp
puts "What column would you like to see?"
col = gets.chomp
output = ""
if File.exist?(filename)
	aFile = File.open(filename,"r")
	aFile.each_line() do |line|
		output = output + line.split(/\t/)[col.to_i()] + ","
		
	end
	puts output
else
	puts "file does not exists"
end 