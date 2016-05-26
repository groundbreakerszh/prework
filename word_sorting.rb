def trololo(str)
	str.scan(/[\w'-]+/).sort_by{|s| s.upcase}
end
puts trololo("Have a nice day.").inspect

	



