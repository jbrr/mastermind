class MasterMind
  def start
    puts "Welcome to MASTERMIND"

    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    choice = gets.chomp!.downcase

    if choice = "p"
      play
    elsif choice = "i"
      instructions
    else
      quit
    end
  end
end

MasterMind.new.start
