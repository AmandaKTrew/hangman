
class Display

    attr_accessor :hang_state, :h1, :h2, :h3, :h4, :h5, :h6, :h7, :phrase_array, :hangman

    def initialize
        @h1 = hanghash[1][0]
        @h2 = hanghash[2][0]
        @h3 = hanghash[3][0]
        @h4 = hanghash[4][0]
        @h5 = hanghash[5][0]
        @h6 = hanghash[6][0]
        @h7 = hanghash[7][0]
    end

    def hanghash
        {
         1 => ["   ", "(_)"],
         2 => [" ", "|"],
         3 => [" ", "|"],
         4 => ["  ", ",_"],
         5 => ["  ", "_,"],
         6 => ["  ", "_/"],
         7 => ["  ", "\\_"]
        }
    end

    def hang_him(turns)
        # self.hang_state[turns] = hangman_hash[turns][1]
        case turns
        when 1
            @h1 = hanghash[1][1]
        when 2
            @h2 = hanghash[2][1]
        when 3
            @h3 = hanghash[3][1]
        when 4
            @h4 = hanghash[4][1]
        when 5
            @h5 = hanghash[5][1]
        when 6
            @h6 = hanghash[6][1]
        when 7
            @h7 = hanghash[7][1]
        end
    end

    def phrase_output

        phrase_array.map do |letter|
            if letter == " "
                " "
            elsif self.hangman.letters_guessed.include?(letter)
                letter
            else
                "_"
            end
        end.join(" ")

    end

    def board

        puts " ____________________                          "
        puts "|                    |                         "
        puts "|                   #{self.h1}                        "
        puts "|                  #{self.h4}#{self.h2}#{self.h5}                       "
        puts "|                    #{self.h3}                         "
        puts "|                  #{self.h6} #{self.h7}                       "
        puts "|                                              "
        puts "                                               "
        puts " #{phrase_output}       "
        puts "                                               "
        puts "letters guessed: ​#{hangman.letters_guessed}                 "

    end


    # def board

    #     puts " ____________________                          "
    #     puts "|                    |                         "
    #     puts "|                   (_)                        "
    #     puts "|                  ,​_|_​,                       "
    #     puts "|                    |                         "
    #     puts "|                  ​_/ \_​                       "
    #     puts "|                                              "
    #     puts "                                               "

    # end

    # def phrase_display

    # end

    # def letters_display
    #     
    # end

end

