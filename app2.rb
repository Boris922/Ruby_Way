print "Введите температуру и шкалу (С или F): "
str = gets
exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split("")

abort "#{temp} недопустимое число." if temp !~ /-?\d+/

temp = temp.to_f
case scale
	when "C", "c"
		f = 1.8*temp + 32
	when "F", "f"
		c = (5.0/9.0) * (temp-32)
	else
		abort "Необходимо задать F или C"
end

if f.nil?
	puts "#{c} градусов С"
else
	puts "#{f} градусов F"
end