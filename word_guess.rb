class WordGuess
  attr_accessor :solve_word, :number_of_lives
    def initialize(hash)
      @solve_word = hash[:solve_word]
      @number_of_lives = hash[:number_of_lives]
    end

  def correct
    puts "\nYes! You got one! No bunnies in your garden!"
  end

  def incorrect
    puts "\nOh no! Another bunny is coming to your yard!"
  end
end

# Start of program:
welcome = <<YES

Hello, home owner! We're going to play a game. I'm going to make you guess a
word, and for each time you guess a letter incorrectly a new BUNNY is going to
start to dig up your yard! HAHAHAHAHA!

YES

new_game = WordGuess.new(solve_word: "ruined", number_of_lives: 5)
letter_array = new_game.solve_word.split(//)
all_guesses = []
count = new_game.number_of_lives

puts welcome

until count == 0
  puts "\nGuess a letter and save your garden!"
  puts "You have already guessed: #{all_guesses}"
  letter_array & all_guesses
  puts "\n#{letter_array & all_guesses}"
  guess = gets.chomp
  if guess == letter_array[0]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[1]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[2]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[3]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[4]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[5]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[6]
  all_guesses << guess
  new_game.correct
  elsif guess != letter_array[0] && guess != letter_array[1] && guess != letter_array[2] && guess != letter_array[3] && guess != letter_array[4] && guess != letter_array[5] && guess != letter_array[6]
  count = count -1
  all_guesses << guess
  new_game.incorrect
  elsif letter_array & all_guesses == letter_array
    puts letter_array.join
    puts "\nYou kept the bunnies away! You win!"
  elsif count == 0
    require 'colorize'
    puts "\nToo many bunnies! They ate your garden!"

    pbunny_one = "============".colorize(:cyan)
    bunny_two = "   ()__()   "
    bunny_thr = "  (=o.o=)   "
    bunny_for = "  (w)_(w).* "
    bunny_fiv = "============".colorize(:cyan)

    puts bunny_one + bunny_two + bunny_thr + bunny_for + bunny_fiv

    exit
  end
end
