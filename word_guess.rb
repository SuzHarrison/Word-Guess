class WordGuess
  attr_accessor :solve_word
  def initialize(hash)
    @solve_word = hash[:solve_word]
    @number_of_lives = 5
  end

  def add_letter
    if guess == true
      #add one letter of the answer
    end
  end

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
        puts "#{new_game.solve_word}!"
        puts "You win!"
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

new_game = WordGuess.new(solve_word: "carrots")
puts "#{new_game.solve_word}"


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
