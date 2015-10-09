class GameCLI

	def call 
		puts "Welcome to Hangman"
		puts "This is a two player game."
	end

	def instructions
		puts "Player One, please select a phrase (up to 20 characters) for Player Two to guess: "
		phrase.get_phrase
		puts "Player Two: You will be ablle to guess the letters in Player One's phrase."
		puts "You may guess one letter at a time. If your guess is correct your letter will be added, slowly revealing the phrase."
		puts "You may make up to 7 mistakes. If you make all of them you will fail the game."
		prompt_for_letter
	end

end
	
	

	
# 	def command
# 		hangman.display.board
# 		player 2 starts

# 	end




# play flow:

# display blank board
# loop of this:
# user guesses
# check if guess is good or bad (comparing letter against phrase)
# 	if good replaces letter on board (updating letters left and letters guessed)
# 	if bad hang the man, reduce the turn (updating letters guessed)
# display updated board
# until game over by turns = 0 or phrase guessed


# 	line 50 deeper:
# 	if guess true
# 		letter check = true (only hangman logic needs to know if true)
# 		letters left updated
# 		letters guessed updated

# 		tell display to replace letters in phrase



