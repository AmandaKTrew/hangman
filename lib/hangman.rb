class Hangman
	attr_accessor :turns, :letters_left, :display
	attr_reader :phrase, :letters_guessed

	def initialize(phrase)
		@turns = 0
		@letters_left = ("a".."z").to_a
		@letters_guessed = []

		@display = Display.new
		@display.hangman = self
		@phrase = Phrase.new(phrase)
		phrase.hangman = self
		@display.phrase_array = phrase.split("")

	end

	def turn_increase
        self.turns += 1
        self.display.hang_him(self.turns)
    end

	def is_letter_in_phrase(letter)
		if phrase.include?(letter)
			letters_guessed << letter
		else
			turn_increase
		end
	end



end