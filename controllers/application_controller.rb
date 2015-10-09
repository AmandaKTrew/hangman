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
         puts ""
         puts "YOU WIN"
         puts ""
      else
         hangman.display.board
         puts ""
         puts "You lose =("
         puts ""
      end
   end

   def play
      hangman.display.board
      view = PickLetters.new
      letter = view.render
      hangman.guess_letter(letter)
   end
   
end