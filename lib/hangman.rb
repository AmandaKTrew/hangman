class Hangman
	attr_accessor :turns, :letters_left, :display
	attr_reader :phrase, :letters_guessed

	def initialize
		@turns_left = 7
		@letters_left = ("a".."z").to_a
		@letters_guessed = []
		@display = Display.new

	end

	def turn_reduce
		turns_left -= 1
		hang the man
	end

	def is_letter_in_phrase(letter)
		if phrase.include?(letter)
			display.phrase_display #displays the updated phrase
		else
			turn_reduce
		end
	end




# def generate_array
# 	phrase =["h","e","l","l","o"," ","w","o","r","l","d"]
# 	display = ["_","_","_","_","_"," ","_","_","_","_","_"]

# letter = user_guess
# 	array = phrase.map do |letter|
# 		phrase.index(letter)
# 	end.compact

# 	array.each do |index|
# 		display[index].gsub("_", letter)
# 	end
# 	takes phrase, converts to hash
	
# end

end