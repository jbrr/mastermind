class MasterMind
  def initialize
    secret_code
    @start = Time.now
    @guess_count = -1
  end

  def start
    puts "Welcome to MASTERMIND"

    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    choice = gets.chomp.downcase

    if choice == "p"
      play
    elsif choice == "i"
      instructions
    elsif choice == "q"
      quit
    else
      puts "Not a valid option, please press 'p', 'i', or 'q'"
      start
    end
  end

  def play_intro
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    puts "What's your guess?"
  end

  def secret_code
    colors = ["r", "g", "b", "y"]
    code = []
    4.times do
      code << colors.sample
    end
    @code = code.join
  end

  def play
    play_intro
    guess = gets.chomp.downcase
    @guess_count += 1

    if guess == @code
      finish = Time.now
      total_time = finish - @start
      puts "Congratulations! You guess the sequence '#{@code}' in #{@guess_count} guesses in #{total_time} seconds!"
    elsif guess == "q"
      abort("Thanks for playing!")
    elsif guess == "c"
      puts @code
      play
    elsif guess.length > 4
      puts "Too many characters, please enter four characters"
      play
    elsif guess.length < 4
      puts "Too few characters, please enter four characters"
      play
    else
      puts "Not correct, try again!"
      play
    end
  end

  def instructions
    puts "Try to guess the secret sequence of colors"
    start
  end

  def quit
    abort("Thanks for playing!")
  end
end

MasterMind.new.start
