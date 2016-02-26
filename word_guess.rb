class WordGuess
  def initialize(word)
    @word = word
    @number_of_lives = 5
    puts "Let's play #{@word}!"
  end

  def

  def life_loss
    if guess == incorrect
      number_of_lives - 1
    end
  end

  def correct
    if guess == true
      if puts "Yes! You got one! No bunnies in your garden!"
        ## add one letter of the answer
      else
        puts "You win!" #answer!!
      end
    end
  end

  def incorrect
    if guess == false
      puts "Oh no! Another bunny is coming to your yard!"
      life_loss
      if life_loss == 0
        puts "Too many bunnies! They ate your garden!"
        exit
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

new_game = WordGuess.new("carrot")
puts new_game.to_s


#puts welcome
#puts @word
#guess = gets.chomp


#letter_array = @word.split(//)
#puts letter_array





#      " "#x= a correct letter of the answer
#      puts "Good job!"
#      puts "Guess again!"
#      guess = gets.chomp
#    else
#      puts "Bad news! Bunnies are multiplying! Please guess again."
#      guess = gets.chomp
#    end
#end
