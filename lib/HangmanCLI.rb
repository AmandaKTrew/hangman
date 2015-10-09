
class HangmanCLI

   def call 
      puts "WELCOME TO HANGMAN"
      controller = HangmanController.new

      #creates game for ONE or TWO players
      puts "Do you have 1 or 2 players? (1 or 2)"
      num_players = gets.chomp.to_i
      if num_players == 1
         controller.one_player
      else
         puts "Player One, please choose a word or phrase (up to 20 characters):"
         user_phrase = gets.chomp.downcase
         controller.two_player(user_phrase)
      end
   end

end
	
