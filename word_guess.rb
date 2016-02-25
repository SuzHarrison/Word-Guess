class WordGuess
  def initialize answer
    @word = ["green", "purple", "yellow", "pink"].sample
  end


  def correct
    if guess == true
      if puts ## add one letter of the answer

      else
        puts "You win!" #answer!!







      " "#x= a correct letter of the answer
      puts "Good job!"
      puts "Guess again!"
      guess = gets.chomp
    else
      puts "Bad news! Bunnies are multiplying! Please guess again."
      guess = gets.chomp
    end
