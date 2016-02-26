class WordGuess
  attr_accessor :solve_word, :number_of_lives
    def initialize(hash)
      @solve_word = hash[:solve_word]
      @number_of_lives = hash[:number_of_lives]
    end

  def correct
    puts "Yes! You got one! No bunnies in your garden!"
  end

  def incorrect
    puts "Oh no! Another bunny is coming to your yard!"
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
all_guesses = []
count = new_game.number_of_lives
wrong_guess = []

puts welcome

until count == 0
  puts "Guess a letter and save your garden!"
  letter_array & all_guesses
  puts "#{letter_array & all_guesses}"
  guess = gets.chomp
  if guess == letter_array[0]
  puts "#{letter_array[0]} _ _ _ _ _ _"
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[1]
  puts "_ #{letter_array[1]} _ _ _ _ _"
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[2]
  puts "_ _ #{letter_array[2]} #{letter_array[3]} _ _ _"
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[4]
  puts "_ _ _ _ #{letter_array[4]} _ _"
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[5]
  puts "_ _ _ _ _ #{letter_array[5]} _"
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[6]
  puts "_ _ _ _ _ _ #{letter_array[6]}"
  all_guesses << guess
  new_game.correct
  elsif guess != letter_array[0] && guess != letter_array[1] && guess != letter_array[2] && guess != letter_array[3] && guess != letter_array[4] && guess != letter_array[5] && guess != letter_array[6]
  count = count -1
  all_guesses << guess
  wrong_guess << guess
  puts "You have already guessed: #{wrong_guess}"
  new_game.incorrect
  elsif count == 0
    puts "Too many bunnies! They ate your garden!"
    exit
  end
end
