def translate(phrase)
	alpha = ('a'...'z').to_a
	vowels = %w(a e i o u)
	consonants = alpha - vowels
	words = phrase.split(' ')
	results = []

	words.each_with_index do |word|
		latinized = ''
		ending = ''

		if vowels.include? word[0]
			latinized = word + 'ay'
			results.push(latinized)
		else
			word.each_char do |s|
				if consonants.include? s
					ending = ending + s
				elsif vowels.include? s
					break
				end
			end
			word.sub!(ending, '')
			latinized = word + ending
			if latinized[0] == 'u' && latinized[-1] == 'q'
				latinized.sub!('u', '')
				latinized = latinized + 'u'
			end
			latinized = latinized + 'ay'
			results.push(latinized)
		end
	end
	results.join(' ')
end

