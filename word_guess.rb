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

#program set up
welcome = <<YES

Hello, gardner! We're going to play a game. I'm going to make you guess a
word, and for each time you guess a letter incorrectly a new BUNNY is going to
start to dig up your yard! HAHAHAHAHA!

YES

new_game = WordGuess.new(solve_word: "ruined", number_of_lives: 5)
letter_array = new_game.solve_word.split(//)
all_guesses = []
count = new_game.number_of_lives

alphabet_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

unguessed_answer_letters_array = []
unguessed_answer_letters = "__ " * letter_array.length
unguessed_answer_letters_array = unguessed_answer_letters.split

#begin program
puts welcome
puts "You have #{count} incorrect guesses before bunnies take over!"


until count == 0
  puts "You have already guessed: #{all_guesses}"
  puts "\nHere's your word so far: #{unguessed_answer_letters_array.join(" ")}"
  puts "\nGuess a letter and save your garden!"
  guess = gets.chomp

  until alphabet_array.include?(guess)
  puts "Please enter a letter."
    guess = gets.chomp
  end

if guess == letter_array[0]
  unguessed_answer_letters_array[0] = letter_array[0]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[1]
  unguessed_answer_letters_array[1] = letter_array[1]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[2]
  unguessed_answer_letters_array[2] = letter_array[2]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[3]
  unguessed_answer_letters_array[3] = letter_array[3]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[4]
  unguessed_answer_letters_array[4] = letter_array[4]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[5]
  unguessed_answer_letters_array[5] = letter_array[5]
  all_guesses << guess
  new_game.correct
  elsif guess == letter_array[6]
  unguessed_answer_letters_array[6] = letter_array[6]
  all_guesses << guess
  new_game.correct
  elsif guess != letter_array[0] && guess != letter_array[1] && guess != letter_array[2] && guess != letter_array[3] && guess != letter_array[4] && guess != letter_array[5] && guess != letter_array[6]
  count = count -1
  all_guesses << guess
  new_game.incorrect
    if count == 4
    puts "\nOh no! A bunny is coming to your yard!"
      require 'colorize'
      bunny_one =   "\n========".colorize(:cyan)
      bunny_two =   "\n ()_()  "
      bunny_thr =   "\n(=o.o=) "
      bunny_for =   "\n(')_(')*"
      bunny_fiv =   "\n========".colorize(:cyan)
      puts bunny_one + bunny_two + bunny_thr + bunny_for + bunny_fiv
      puts "You have #{count} incorrect guesses before bunnies take over!"
    elsif count == 3
    puts "\nOh no! Another bunny is coming to your yard!"
      require 'colorize'
      second_bunny_one = "\n=====================".colorize(:cyan)
      second_bunny_two = "\n   ()__()     ()_()  "
      second_bunny_thr = "\n  (=o.o=)     (^+^)  "
      second_bunny_for = "\n  (w)_(w)*  *(')_(') "
      second_bunny_fiv = "\n=====================".colorize(:cyan)
      puts second_bunny_one + second_bunny_two + second_bunny_thr + second_bunny_for + second_bunny_fiv
      puts "You have #{count} incorrect guesses before bunnies take over!"
    elsif count == 2
    puts "\nOh no! Another bunny is coming to your yard!"
      require 'colorize'
      third_bunny_one = "\n===============================".colorize(:light_blue)
      third_bunny_two = "\n  (')_(')     ()_()     ()_()  "
      third_bunny_thr = "\n  ('o+o')     (^+^)     (O.o)  "
      third_bunny_for = "\n  (@)_(@)*  *(')_(')  *(')(')  "
      third_bunny_fiv = "\n===============================".colorize(:light_blue)
      puts third_bunny_one + third_bunny_two + third_bunny_thr + third_bunny_for + third_bunny_fiv
      puts "You have #{count} incorrect guesses before bunnies take over!"
    elsif count == 1
      puts "\nOh no! Another bunny is coming to your yard!"
      puts "You have #{count} incorrect guesses before bunnies take over!"
      require 'colorize'
      fourth_bunny_one = "\n========================================".colorize(:cyan)
      fourth_bunny_two = "\n  (')_(')     ()_()     ()_()   ()_()   "
      fourth_bunny_thr = "\n  ('o+o')     (^+^)     (O.o)   (-.-)   "
      fourth_bunny_for = "\n  (@)_(@)*  *(')_(')  *(')(')  (')(')*  "
      fourth_bunny_fiv = "\n========================================".colorize(:cyan)
      puts fourth_bunny_one + fourth_bunny_two + fourth_bunny_thr + fourth_bunny_for + fourth_bunny_fiv
      puts "You have #{count} incorrect guesses before bunnies take over!"
    end
  end


  #WIN
  if letter_array & all_guesses == letter_array
    puts "Your word was #{letter_array.join.upcase}!"
    puts "You kept the bunnies away! YOU WIN! :)"
    exit
  end

  #LOSE
  if count == 0
    require 'colorize'
    puts "Too many bunnies! They ate your garden! GAME OVER :(".colorize(:red)
    fifth_bunny_one = "\n==================================================".colorize(:cyan)
    fifth_bunny_two = "\n  (')_(')     ()_()     ()_()   ()_()    (')_(')  ".colorize(:red)
    fifth_bunny_thr = "\n  ('o+o')     (^+^)     (O.o)   (-.-)    (=^+^=)  ".colorize(:red)
    fifth_bunny_for = "\n  (@)_(@)*  *(')_(')  *(')(')  (')(')*   (%)_(%)**".colorize(:red)
    fifth_bunny_fiv = "\n==================================================".colorize(:cyan)
    puts fifth_bunny_one + fifth_bunny_two + fifth_bunny_thr + fifth_bunny_for + fifth_bunny_fiv
    exit
  end
end
