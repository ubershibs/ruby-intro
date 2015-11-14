def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times=2)
	([word] * times).join(' ')
end	

def start_of_word(word, letters)
	word[0...letters]
end

def first_word(words)
	words.split(' ').first
end

def titleize(title)
	words = title.split.map do |word|
		if %w(the and over).include?(word)
			word
		else
			word.capitalize
		end
	end
	words.first.capitalize!
	words.join(' ')
end