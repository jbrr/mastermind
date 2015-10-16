class MasterMind
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
    []
  end

  def play
    play_intro
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
