# Main logic
def battle(user_attack, comp_attack)

  # Win/Loss messages
  win_loss = {win: 'You win!', loss: 'You lose!'}

  # All possible outcomes of 'battle'
  r_s = '=> Rock CRUSHES Scissors!'
  r_l = '=> Rock CRUSHES Lizard!'
  p_sp = '=> Paper DISPROVES Spock!'
  p_r = '=> Paper COVERS Rock!'
  s_p = '=> Scissors CUTS Paper!'
  s_l = '=> Scissors DECAPITATES Lizard!'
  l_p = '=> Lizard EATS Paper!'
  l_sp = '=> Lizard POISONS Spock!'
  sp_r = '=> Spock VAPORIZES Rock!'
  sp_s = '=> Spock SMASHES Scissors!'

  # Each possible output message for the user's weapon of choice
  user_r = 'You chose Rock,'
  user_p = 'You chose Paper,'
  user_s = 'You chose Scissors,'
  user_l = 'You chose Lizard,'
  user_sp = 'You chose Spock,'

  # Each possible output message for the computer's weapon of choice
  comp_r = 'Your opponent chose Rock...'
  comp_p = 'Your opponent chose Paper...'
  comp_s = 'Your opponent chose Scissors...'
  comp_l = 'Your opponent chose Lizard...'
  comp_sp = 'Your opponent chose Spock...'

  # 'Battle' conditionals
  if user_attack == 'r' && comp_attack == 1
    puts 'You both chose Rock! Stalemate!'

  elsif user_attack == 'r' && comp_attack == 2
    puts "#{user_r} #{comp_p}"
    puts "#{p_r} #{win_loss[:loss]}"

  elsif user_attack == 'r' && comp_attack == 3
    puts "#{user_r} #{comp_s}"
    puts "#{r_s} #{win_loss[:win]}"

  elsif user_attack == 'r' && comp_attack == 4
    puts "#{user_r} #{comp_l}"
    puts "#{r_l} #{win_loss[:win]}"

  elsif user_attack == 'r' && comp_attack == 5
    puts "#{user_r} #{comp_sp}"
    puts "#{sp_r} #{win_loss[:loss]}"

  elsif user_attack == 'p' && comp_attack == 1
    puts "#{user_p} #{comp_r}"
    puts "#{p_r} #{win_loss[:win]}"

  elsif user_attack == 'p' && comp_attack == 2
    puts 'You both chose Paper! Stalemate!'

  elsif user_attack == 'p' && comp_attack == 3
    puts "#{user_p} #{comp_s}"
    puts "#{s_p} #{win_loss[:loss]}"

  elsif user_attack == 'p' && comp_attack == 4
    puts "#{user_p} #{comp_l}"
    puts "#{l_p} #{win_loss[:loss]}"

  elsif user_attack == 'p' && comp_attack == 5
    puts "#{user_p} #{comp_sp}"
    puts "#{p_sp} #{win_loss[:win]}"

  elsif user_attack == 's' && comp_attack == 1
    puts "#{user_s} #{comp_r}"
    puts "#{r_s} #{win_loss[:loss]}"

  elsif user_attack == 's' && comp_attack == 2
    puts "#{user_s} #{comp_p}"
    puts "#{s_p} #{win_loss[:win]}"

  elsif user_attack == 's' && comp_attack == 3
    puts 'You both chose Scissors! Stalemate!'

  elsif user_attack == 's' && comp_attack == 4
    puts "#{user_s} #{comp_l}"
    puts "#{s_l} #{win_loss[:win]}"

  elsif user_attack == 's' && comp_attack == 5
    puts "#{user_s} #{comp_sp}"
    puts "#{sp_s} #{win_loss[:loss]}"

  elsif user_attack == 'l' && comp_attack == 1
    puts "#{user_l} #{comp_r}"
    puts "#{r_l} #{win_loss[:loss]}"

  elsif user_attack == 'l' && comp_attack == 2
    puts "#{user_l} #{comp_p}"
    puts "#{l_p} #{win_loss[:win]}"

  elsif user_attack == 'l' && comp_attack == 3
    puts "#{user_l} #{comp_s}"
    puts "#{s_l} #{win_loss[:loss]}"

  elsif user_attack == 'l' && comp_attack == 4
    puts 'You both chose Lizard! Stalemate!'

  elsif user_attack == 'l' && comp_attack == 5
    puts "#{user_l} #{comp_sp}"
    puts "#{l_sp} #{win_loss[:win]}"

  elsif user_attack == 'sp' && comp_attack == 1
    puts "#{user_sp} #{comp_r}"
    puts "#{sp_r} #{win_loss[:win]}"

  elsif user_attack == 'sp' && comp_attack == 2
    puts "#{user_sp} #{comp_p}"
    puts "#{p_sp} #{win_loss[:loss]}"

  elsif user_attack == 'sp' && comp_attack == 3
    puts "#{user_sp} #{comp_s}"
    puts "#{sp_s} #{win_loss[:win]}"

  elsif user_attack == 'sp' && comp_attack == 4
    puts "#{user_sp} #{comp_l}"
    puts "#{l_sp} #{win_loss[:loss]}"

  elsif user_attack == 'sp' && comp_attack == 5
    puts 'You both chose Spock! Stalemate!'
  else
    puts 'You must have chosen an illegal weapon!'
  end

  # Ask the user if they want to play again.
  puts 'Play again? (y or any other key to exit)'
  user_decision = gets.chomp

  if user_decision.downcase == 'y'
    get_armed
  end
end

# Initial message - User decides whether to play or not
def challenge
  puts "=> PLAY 'ROCK PAPER SCISSORS LIZARD SPOCK!' <="
  puts 'Are you ready!? (y or any other key to exit)'
  user_decision = gets.chomp

  if user_decision.downcase == 'y'
    get_armed
  end
end

# Choose which of the available 'weapons' to use against computer
def get_armed
    puts 'CHOOSE YOUR WEAPON! (r - ROCK!, p - PAPER!, s - SCISSORS!, l - LIZARD!, sp - SPOCK!)'
    user_weapon = gets.chomp
    comp_weapon = Random.rand(1..5)
    battle(user_weapon, comp_weapon)
end

# Initial method to be called
challenge