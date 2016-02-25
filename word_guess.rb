class WordGuess
  def initialize(new_game)
    @word = new_game["green", "purple", "yellow", "pink"].sample
  end

  def correct
    if guess == true
      if puts ## add one letter of the answer

      else
        puts "You win!" #answer!!
      end
    end
  end
end

# Start of program:
welcome = <<YES

Hello, home owner! We're going to play a game. I'm going to make you guess a
word, and for each time you guess a letter incorrectly a new BUNNY is going to
start to dig up your yard! HAHAHAHAHA!

Are you ready? Take a guess!

YES

new_game = WordGuess.new

puts welcome
guess = gets.chomp

letter_array = @word.split(//)
puts letter_array





#      " "#x= a correct letter of the answer
#      puts "Good job!"
#      puts "Guess again!"
#      guess = gets.chomp
#    else
#      puts "Bad news! Bunnies are multiplying! Please guess again."
#      guess = gets.chomp
#    end
#end
