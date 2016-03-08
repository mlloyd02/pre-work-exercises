for num in 1..100
	result = ""
	if num % 3 == 0
		result << "Fizz"
	end
	if num % 5 == 0
		result << "Buzz"
	end
	if "#{num}"[0] == "1"
		result << "Bang"
	end
	if !(num % 3 == 0 || num % 5 == 0 || "#{num}"[0] == "1")
		result << "#{num}"
	end
	puts result
end
