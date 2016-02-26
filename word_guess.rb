class WordGuess
  attr_accessor :solve_word, :number_of_lives
    def initialize(hash)
      @solve_word = hash[:solve_word]
      @number_of_lives = hash[:solve_word]
    end

  def add_letter
    if guess == true

    end
  end

  def life_loss
    if @number_of_lives > 0
      @number_of_lives -= 1
    elsif @number_of_lives = 0
      puts "Too many bunnies! They ate your garden!"
      exit
    end
  end

  def correct
      if puts "Yes! You got one! No bunnies in your garden!"
         puts "Guess another letter and save your garden!"
         guess = gets.chomp
      else
        puts "#{new_game.solve_word}!"
        puts "You win!"
      end
  end

  def incorrect
      life_loss
      puts "Oh no! Another bunny is coming to your yard!"
      puts "Guess another letter and save your garden!"
      guess = gets.chomp
  end
end

# Start of program:
welcome = <<YES

Hello, home owner! We're going to play a game. I'm going to make you guess a
word, and for each time you guess a letter incorrectly a new BUNNY is going to
start to dig up your yard! HAHAHAHAHA!

Are you ready? Take a guess!

YES

new_game = WordGuess.new(solve_word: "carrots", number_of_lives: 5)
letter_array = new_game.solve_word.split(//)

puts welcome
guess = gets.chomp



#the puts statements in this loop are not currently correct. We are going to have
# to come up with a solution for adding letters when letters have already been guessed.
until new_game.number_of_lives == 0

  if guess == letter_array[0]
  new_game.correct
  puts "#{letter_array[0]} _ _ _ _ _ _"
  elsif guess == letter_array[1]
  new_game.correct
  puts "_ #{letter_array[1]} _ _ _ _ _"
  elsif guess == letter_array[2]
  new_game.correct
  puts "_ _ #{letter_array[2]} _ _ _ _"
  elsif guess == letter_array[3]
  new_game.correct
  puts "_ _ _ #{letter_array[3]} _ _ _"
  elsif guess == letter_array[4]
  new_game.correct
  puts "_ _ _ _ #{letter_array[4]} _ _"
  elsif guess == letter_array[5]
  new_game.correct
  puts "_ _ _ _ _ #{letter_array[5]} _"
  elsif guess == letter_array[6]
  new_game.correct
  puts "_ _ _ _ _ _ #{letter_array[6]}"
  end

  #This section has been untested. Previously used || and that didn't work.
  if guess != letter_array[0]
  new_game.incorrect
  elsif guess != letter_array[1]
    new_game.incorrect
  elsif guess != letter_array[2]
    new_game.incorrect
  elsif guess != letter_array[3]
    new_game.incorrect
  elsif guess != letter_array[4]
    new_game.incorrect
  elsif guess != letter_array[5]
    new_game.incorrect
  elsif guess != letter_array[6]
    new_game.incorrect
  end
end

#      " "#x= a correct letter of the answer
#      puts "Good job!"
#      puts "Guess again!"
#      guess = gets.chomp
#    else
#      puts "Bad news! Bunnies are multiplying! Please guess again."
#      guess = gets.chomp
