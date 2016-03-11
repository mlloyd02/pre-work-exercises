def sort_words(string)
	string.gsub(/[[:punct:]]/, '').split().sort_by{|a| a.downcase} 
end

puts sort_words("Zelda is cool! Right?")