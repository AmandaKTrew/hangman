class HangmanController

   attr_accessor :hangman

   def one_player
      phrase = WordGenerator.new.generate
      @hangman = Hangman.new(phrase)
      game
   end

   def two_player(user_phrase)
      # phrase_check(user_phrase)
      puts "Thank you.\nPlayer Two, it's your turn to guess!"
      @hangman = Hangman.new(user_phrase) 
      game
   end

   def game   
      while !hangman.win? && hangman.turns < 7
        play
      end

      if hangman.win?
         hangman.display.board
         puts "YOU WIN\n"
      else
         hangman.letters_guessed = ("a".."z").to_a
         hangman.display.board
         puts "You lose =(\n"
      end
   end

   def play
      hangman.display.board
      view = PickLetters.new
      letter = view.render
      hangman.guess_letter(letter)
   end

   
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

	
