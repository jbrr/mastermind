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
