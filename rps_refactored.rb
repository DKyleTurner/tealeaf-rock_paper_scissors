# Choose weapon to start game
def choose_weapon
  puts 'ROCK PAPER SCISSORS LIZARD SPOCK! CHOOSE YOUR WEAPON!'
  puts '(r - ROCK!, p - PAPER!, s - SCISSORS!, l - LIZARD!, sp - SPOCK!)'
  user_weapon_weapon = gets.chomp
  comp_weapon_weapon = Random.rand(1..5)
  battle(user_weapon_weapon, comp_weapon_weapon)
end

# Give choice to play again or not
def play_again
  puts 'Play again? (y or any other key to exit)'
  user_decision = gets.chomp

  if user_decision.downcase == 'y'
    choose_weapon
  end
end

# Main game logic
def battle(user_weapon_attack, comp_weapon_attack)

  # Weapon the user chose
  user_weapon_r_msg = 'You chose Rock,'
  user_weapon_p_msg = 'You chose Paper,'
  user_weapon_s_msg = 'You chose Scissors,'
  user_weapon_l_msg = 'You chose Lizard,'
  user_weapon_sp_msg = 'You chose Spock,'

  # Weapon the computer chose
  comp_weapon_r_msg = 'Your opponent chose Rock...'
  comp_weapon_p_msg = 'Your opponent chose Paper...'
  comp_weapon_s_msg = 'Your opponent chose Scissors...'
  comp_weapon_l_msg = 'Your opponent chose Lizard...'
  comp_weapon_sp_msg = 'Your opponent chose Spock...'

  # Message for when the user either wins or loses
  win_loss_msg = {win: 'You win!', loss_msg: 'You lose!'}

  # msgs describing outcome of game
  post_game_msg = { r_beats_s: '=> Rock CRUSHES Scissors!', r_beats_l: '=> Rock CRUSHES Lizard!', p_beats_sp: '=> Paper DISPROVES Spock!',
      p_beats_r: '=> Paper COVERS Rock!', s_beats_p: '=> Scissors CUTS Paper!', s_beats_l: '=> Scissors DECAPITATES Lizard!',
      l_beats_p: '=> Lizard EATS Paper!', l_beats_sp: '=> Lizard POISONS Spock!', sp_beats_r: '=> Spock VAPORIZES Rock!',
      sp_beats_s: '=> Spock SMASHES Scissors!' }

  # Check for winner of game - output msg
  if user_weapon_attack == 'r' && comp_weapon_attack == 1
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts 'You both chose Rock! Stalemate!'
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'r' && comp_weapon_attack == 2
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_r_msg} #{comp_weapon_p_msg}"
    puts "#{post_game_msg[:p_beats_r]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'r' && comp_weapon_attack == 3
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_r_msg} #{comp_weapon_s_msg}"
    puts "#{post_game_msg[:r_beats_s]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'r' && comp_weapon_attack == 4
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_r_msg} #{comp_weapon_l_msg}"
    puts "#{post_game_msg[:r_beats_l]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'r' && comp_weapon_attack == 5
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_r_msg} #{comp_weapon_sp_msg}"
    puts "#{post_game_msg[:sp_beats_r]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'p' && comp_weapon_attack == 1
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_p_msg} #{comp_weapon_r_msg}"
    puts "#{post_game_msg[:p_beats_r]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'p' && comp_weapon_attack == 2
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts 'You both chose Paper! Stalemate!'
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'p' && comp_weapon_attack == 3
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_p_msg} #{comp_weapon_s_msg}"
    puts "#{post_game_msg[:s_beats_p]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'p' && comp_weapon_attack == 4
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_p_msg} #{comp_weapon_l_msg}"
    puts "#{post_game_msg[:l_beats_p]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'p' && comp_weapon_attack == 5
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_p_msg} #{comp_weapon_sp_msg}"
    puts "#{post_game_msg[:p_beats_sp]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 's' && comp_weapon_attack == 1
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_s_msg} #{comp_weapon_r_msg}"
    puts "#{post_game_msg[:r_beats_s]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 's' && comp_weapon_attack == 2
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_s_msg} #{comp_weapon_p_msg}"
    puts "#{post_game_msg[:s_beats_p]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 's' && comp_weapon_attack == 3
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts 'You both chose Scissors! Stalemate!'
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 's' && comp_weapon_attack == 4
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_s_msg} #{comp_weapon_l_msg}"
    puts "#{post_game_msg[:s_beats_l]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 's' && comp_weapon_attack == 5
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_s_msg} #{comp_weapon_sp_msg}"
    puts "#{post_game_msg[:sp_beats_s]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'l' && comp_weapon_attack == 1
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_l_msg} #{comp_weapon_r_msg}"
    puts "#{post_game_msg[:r_beats_l]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'l' && comp_weapon_attack == 2
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_l_msg} #{comp_weapon_p_msg}"
    puts "#{post_game_msg[:l_beats_p]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'l' && comp_weapon_attack == 3
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_l_msg} #{comp_weapon_s_msg}"
    puts "#{post_game_msg[:s_beats_l]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'l' && comp_weapon_attack == 4
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts 'You both chose Lizard! Stalemate!'
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'l' && comp_weapon_attack == 5
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_l_msg} #{comp_weapon_sp_msg}"
    puts "#{post_game_msg[:l_beats_sp]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'sp' && comp_weapon_attack == 1
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_sp_msg} #{comp_weapon_r_msg}"
    puts "#{post_game_msg[:sp_beats_r]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'sp' && comp_weapon_attack == 2
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_sp_msg} #{comp_weapon_p_msg}"
    puts "#{post_game_msg[:p_beats_sp]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'sp' && comp_weapon_attack == 3
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_sp_msg} #{comp_weapon_s_msg}"
    puts "#{post_game_msg[:sp_beats_s]} #{win_loss_msg[:win]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'sp' && comp_weapon_attack == 4
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts "#{user_weapon_sp_msg} #{comp_weapon_l_msg}"
    puts "#{post_game_msg[:l_beats_sp]} #{win_loss_msg[:loss_msg]}"
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '

  elsif user_weapon_attack == 'sp' && comp_weapon_attack == 5
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts 'You both chose Spock! Stalemate!'
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
  else
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
    puts 'You must have chosen an illegal weapon!'
    puts '-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  '
  end
  play_again
end

# Initiate game
choose_weapon