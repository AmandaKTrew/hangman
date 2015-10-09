class Phrase
	attr_accessor :phrase, :letters_left, :letters_guessed, :letter
	attr_reader :is_letter_in_phrase, :turn_reduce

	def initialize(phrase)
		@phrase = phrase
		@letter = letter
		@letters_left = ("a".."z").to_a
		@letters_guessed = []
	end

	def get_phrase
		phrase_input = gets.chomp.downcase
		self.phrase_check(phrase_input)
	end

	def phrase_check(phrase_input)
		if phrase_input.length > 20 || (/^[a-zA-Z]*$/).match(phrase_input) == nil
			puts "Please enter a phrase (up to 20 characters) that only contains letters."
			self.get_phrase
		else
			self.phrase = phrase_input
		end
	end

	def prompt_for_letter(letter)
		if turns > 0
			puts "Please guess a letter: "
			self.get_letter
		else
			puts "You are out of turns. Goodbye"
		end
	end

	def get_letter(letter)
		letter_input = gets.chomp.downcase
		self.letter_check(letter_input)
	end

	def letter_check(letter_input)
		if letter.length > 1 || (/^[a-zA-Z]*$/).match(letter_input) == nil
			puts "Please enter a single letter"
			self.get_letter
		else
			letter = letter_input
			letters_guessed << letter
			is_letter_in_phrase(letter)
			self.prompt_for_letter
		end
	end

end