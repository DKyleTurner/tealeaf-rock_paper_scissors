user_decision = ''

def battle(user_attack, comp_attack) # VERY redundant - refactor messages into variables
  if user_attack == 'r' && comp_attack == 1
    puts "You both chose Rock! Stalemate!"
  elsif user_attack == 'r' && comp_attack == 2
    puts "You chose Rock, your opponent chose Paper..."
    puts "Paper COVERS Rock! You lose!"
  elsif user_attack == 'r' && comp_attack == 3
    puts "You chose Rock, your opponent chose Scissors..."
    puts "Rock CRUSHES Scissors! You win!"
  elsif user_attack == 'r' && comp_attack == 4
    puts "You chose Rock, your opponent chose Lizard..."
    puts "Rock CRUSHES Lizard! You win!"
  elsif user_attack == 'r' && comp_attack == 5
    puts "You chose Rock, your opponent chose Spock..."
    puts "Spock VAPORIZES Rock! You lose!"
  elsif user_attack == 'p' && comp_attack == 1
    puts "You chose Paper, your opponent chose Rock..."
    puts "Paper COVERS Rock! You win!"
  elsif user_attack == 'p' && comp_attack == 2
    puts "You both chose Paper! Stalemate!"
  elsif user_attack == 'p' && comp_attack == 3
    puts "You chose Paper, your opponent chose Scissors..."
    puts "Scissors CUTS Paper! You lose!"
  elsif user_attack == 'p' && comp_attack == 4
    puts "You chose Paper, your opponent chose Lizard..."
    puts "Lizard EATS Paper! You lose!"
  elsif user_attack == 'p' && comp_attack == 5
    puts "You chose Paper, your opponent chose Spock..."
    puts "Paper DISPROVES Spock! You win!"
  elsif user_attack == 's' && comp_attack == 1
    puts "You chose Scissors, your opponent chose Rock..."
    puts "Rock CRUSHES Scissors! You lose!"
  elsif user_attack == 's' && comp_attack == 2
    puts "You chose Scissors, your opponent chose Paper..."
    puts "Scissors CUTS Paper! You win!"
  elsif user_attack == 's' && comp_attack == 3
    puts "You both chose Scissors! Stalemate!"
  elsif user_attack == 's' && comp_attack == 4
    puts "You chose Scissors, your opponent chose Lizard..."
    puts "Scissors DECAPITATES Lizard! You win!"
  elsif user_attack == 's' && comp_attack == 5
    puts "You chose Scissors, your opponent chose Spock..."
    puts "Spock SMASHES Scissors! You lose!"
  elsif user_attack == 'l' && comp_attack == 1
    puts "You chose Lizard, your opponent chose Rock..."
    puts "Rock CRUSHES Lizard! You lose!"
  elsif user_attack == 'l' && comp_attack == 2
    puts "You chose Lizard, your opponent chose Paper..."
    puts "Lizard EATS Paper! You win!"
  elsif user_attack == 'l' && comp_attack == 3
    puts "You chose Lizard, your opponent chose Scissors..."
    puts "Scissors DECAPITATES Lizard! You lose!"
  elsif user_attack == 'l' && comp_attack == 4
    puts puts "You both chose Lizard! Stalemate!"
  elsif user_attack == 'l' && comp_attack == 5
    puts "You chose Lizard, your opponent chose Spock..."
    puts "Lizard POISONS Spock! You win!"
  elsif user_attack == 'sp' && comp_attack == 1
    puts "You chose Spock, your opponent chose Rock..."
    puts "Spock VAPORIZES Rock! You win!"
  elsif user_attack == 'sp' && comp_attack == 2
    puts "You chose Spock, your opponent chose Paper..."
    puts "Paper DISPROVES Spock! You lose!"
  elsif user_attack == 'sp' && comp_attack == 3
    puts "You chose Spock, your opponent chose Scissors..."
    puts "Spock SMASHES Scissors! You win!"
  elsif user_attack == 'sp' && comp_attack == 4
    puts "You chose Spock, your opponent chose Lizard..."
    puts "Lizard POISONS Spock! You lose!"
  elsif user_attack == 'sp' && comp_attack == 5
    puts "You both chose Lizard! Stalemate!"
  else
    puts "You must have chosen an illegal weapon!"
  end

  puts "Play again? (y/n)"
  user_decision = gets.chomp
  if user_decision.downcase == 'y'
  get_armed
  end
end

def challenge
  puts "PLAY 'ROCK PAPER SCISSORS LIZARD SPOCK!'"
  puts "Are you ready!? (y/n)"
  user_decision = gets.chomp
  if user_decision.downcase == 'y'
    get_armed
  end
end

def get_armed
    puts "CHOOSE YOUR WEAPON! (r - ROCK!, p - PAPER!, s - SCISSORS!, l - LIZARD!, sp - SPOCK!)"

    user_weapon = gets.chomp
    comp_weapon = Random.rand(1..5)

    battle(user_weapon, comp_weapon)
end
challenge