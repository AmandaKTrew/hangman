
class HangmanCLI
   attr_accessor :controller

   def call 
      puts "WELCOME TO HANGMAN"
      @controller = HangmanController.new

      #creates game for ONE or TWO players
      puts "Do you have 1 or 2 players? (1 or 2)"
      num_players = gets.chomp.to_i
      if num_players == 1
         controller.one_player
      else
         choose_a_phrase
      end
   end

   def choose_a_phrase
      puts "Player One, please choose a word or phrase (up to 20 characters):"
      user_phrase = gets.chomp.downcase
      phrase_check(user_phrase)
   end

   def phrase_check(user_phrase)
      if user_phrase.length > 20 || (/^[A-Za-z ]+$/).match(user_phrase) == nil
         puts "Please enter a phrase (up to 20 characters) that only contains letters."
         choose_a_phrase
      else
         controller.two_player(user_phrase)
      end
   end

end
	
