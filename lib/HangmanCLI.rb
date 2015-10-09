require 'pry'
class HangmanCLI

 attr_accessor :hangman, :word


 def call 
   puts "WELCOME TO HANGMAN"

   #creates game for ONE or TWO players
   puts "Do you have 1 or 2 players? (1 or 2)"
   num_players = get_input.to_i
   num_players == 1 ? one_player : two_player

   # Play game   
   while !hangman.win? && hangman.turns < 7
     play
   end

   if hangman.win?
      hangman.display.board
      puts "YOU WIN"
   else
      hangman.letters_guessed = ("a".."z").to_a
      hangman.display.board
      puts "You lose =("
   end

end

def play
   hangman.display.board
   puts "Pick a letter:"
   letter = get_input
   hangman.guess_letter(letter)
   # guess = get_input
   # if guess.size == 1
   #   hangman.letter_check(guess) ? hangman.correct : hangman.wrong
   # else
   #   error_message
   # end
 end

def get_input
   gets.chomp.downcase
end

def one_player
   phrase = WordGenerator.new.generate
   @hangman = Hangman.new(phrase)
end

def two_player
   puts "Player One, please choose a word or phrase (up to 20 characters):"
   user_phrase = get_input
   # phrase_check(user_phrase)
   puts "Thank you.\nPlayer Two, it's your turn to guess!"
   @hangman = Hangman.new(user_phrase) 
end

# def phrase_check(user_phrase)
# 	if user_phrase.length > 20 || (/^[a-zA-Z]*$/).match(user_phrase) == nil
# 		puts "Please enter a phrase (up to 20 characters) that only contains letters."
# 		get_input
# 	else
# 		phrase = Phrase.new(user_phrase)
# 	end
# end

 	









# 	attr_accessor :phrase

# 	def call 
# 		puts "Welcome to Hangman"
# 		puts "This is a two player game."
# 	end

# 	def instructions
# 		puts "Player One, please select a phrase (up to 20 characters) for Player Two to guess: "
# 		phrase.get_phrase
# 		puts "Player Two: You will be ablle to guess the letters in Player One's phrase."
# 		puts "You may guess one letter at a time. If your guess is correct your letter will be added, slowly revealing the phrase."
# 		puts "You may make up to 7 mistakes. If you make all of them you will fail the game."
# 		prompt_for_letter
# 	end

end
	
