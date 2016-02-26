class WordGuess
  attr_accessor :solve_word, :number_of_lives
    def initialize(hash)
      @solve_word = hash[:solve_word]
      @number_of_lives = hash[:number_of_lives]
    end

  #def life_loss
  #  if @number_of_lives
  #    @number_of_lives -= 1
  #  elsif @number_of_lives = 0
  #    puts "Too many bunnies! They ate your garden!"
  #    exit
  #  end
  #end

  def correct
    puts "Yes! You got one! No bunnies in your garden!"
    puts "Guess another letter and save your garden!"
    guess = gets.chomp
  end

  def incorrect
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
count = new_game.number_of_lives

puts welcome
guess = gets.chomp

# MUST MOVE LIFE LOSS END EXIT TO UNTIL LOOP.
# COUNT IS FINALLY WORKING! YEAAAAAAAAAAAH!

#the puts statements in this loop are not currently correct. We are going to have
# to come up with a solution for adding letters when letters have already been guessed.
until count == 0
  if guess == letter_array[0]
  puts "#{letter_array[0]} _ _ _ _ _ _"
  new_game.correct
  elsif guess == letter_array[1]
  puts "_ #{letter_array[1]} _ _ _ _ _"
  new_game.correct
  elsif guess == letter_array[2]
  puts "_ _ #{letter_array[2]} _ _ _ _"
  new_game.correct
  elsif guess == letter_array[3]
  puts "_ _ _ #{letter_array[3]} _ _ _"
  new_game.correct
  elsif guess == letter_array[4]
  puts "_ _ _ _ #{letter_array[4]} _ _"
  new_game.correct
  elsif guess == letter_array[5]
  puts "_ _ _ _ _ #{letter_array[5]} _"
  new_game.correct
  elsif guess == letter_array[6]
  puts "_ _ _ _ _ _ #{letter_array[6]}"
  new_game.correct
elsif # we need to move the negative result up to here in one long elsif
  end

  #This section has been untested. Previously used || and that didn't work.
until count == 0
  if guess != letter_array[0]
    count = count -1
    new_game.incorrect
  elsif guess != letter_array[1]
    count = count -1
    new_game.incorrect
  elsif guess != letter_array[2]
    count = count -1
    new_game.incorrect
  elsif guess != letter_array[3]
    count = count -1
    new_game.incorrect
  elsif guess != letter_array[4]
    count = count -1
    new_game.incorrect
  elsif guess != letter_array[5]
    count = count -1
    new_game.incorrect
  elsif guess != letter_array[6]
    count = count -1
    new_game.incorrect
  elsif count == 0
    puts "Too many bunnies! They ate your garden!"
    exit
  end
end

#      " "#x= a correct letter of the answer
#      puts "Good job!"
#      puts "Guess again!"
#      guess = gets.chomp
#    else
#      puts "Bad news! Bunnies are multiplying! Please guess again."
#      guess = gets.chomp
