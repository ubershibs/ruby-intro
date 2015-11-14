class Book
	attr_reader :title

	def title=(new_title)
		words = new_title.split.map do |word|
			if %w{the a an and in of to}.include? word
				word
			else
				word.capitalize
			end
		end
		words.first.capitalize!
		@title = words.join(' ')
	end
end