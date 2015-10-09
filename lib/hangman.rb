
class Hangman
	attr_accessor :turns, :display, :letters_guessed
	attr_reader :phrase

	def initialize(phrase)
		@phrase = phrase
		@turns = 0
		@letters_guessed = []

		@display = Display.new
		@display.hangman = self
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
	end

end