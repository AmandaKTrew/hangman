require 'pry'
class Display

def hangman_hash

	{
 1 => ["   ", "(_)"],
 2 => [" ", "|"],
 3 => [" ", "|"],
 4 => ["  ", ",_"],
 5 => ["  ", "_,"],
 6 => ["  ", "_/"],
 7 => ["  ", "\_"]
}
end

	def hangman_state
		@h1 = 0
		@h2 = 0
		@h1

	end

	def phrase_state

	end

	def letters_state

	end

	def board

		puts " ____________________                          "
		puts "|                    |                         "
		puts "|                   (_)                        "
		puts "|                  ,_|_,                       "
		puts "|                    |                         "
		puts "|                  _/ \_                       "
		puts "|                                              "
		puts "                                               "

	end

	def phrase_display
		puts " _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _       "
		puts "                                               "
	end

	def letters_display
		puts "letters guessed: _ _ _ _ _ _ _                 "
	end


end

head1 = h1[0]
head1 = h1[1]

