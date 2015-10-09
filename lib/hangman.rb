require 'pry'
class Hangman
	attr_accessor :turns, :letters_left, :display
	attr_reader :phrase, :letters_guessed
	attr_writer :letters_guessed
	def initialize(phrase)
		@phrase = phrase
		@turns = 0
		@letters_left = ("a".."z").to_a
		@letters_guessed = []

		@display = Display.new
		@display.hangman = self
		# @phrase = Phrase.new(phrase)
		@display.phrase_array = phrase.split("")

	end

	def guess_letter(letter)
        self.letters_guessed << letter
        if !phrase.include?(letter)
        	turn_increase
        end
    end

	def turn_increase
        self.turns += 1
        self.display.hang_him(self.turns)
    end

    def win?
    	formatted_array = display.phrase_array - [" "]
    	formatted_array.all? do |letter|
    		letters_guessed.include?(letter)
    	end
    	# letters_guessed.all? do |letter|
    	# 	display.phrase_array.include?(letter)
    	# end
	end

	# def is_letter_in_phrase(letter)
	# 	self.letters_guessed << letter
	# 	if phrase.include?(letter)
			
	# 	else
	# 		turn_increase
	# 	end
	# end



end