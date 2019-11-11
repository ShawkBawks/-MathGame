class Game
  #sets up players
  def initialize(name)
    @name = name
    @player_1 = Player.new('Flava Flav')
    @player_2 = Player.new('Bort Sampson')
  end

  #trigger beginning of game
  def start
    puts "We have new challengers! Welcome #{@player_1.name} and #{@player_2.name}!"
    turn
  end

  #tracks player scores
  def match_stats
    puts "#{@player_1.name}: #{@player_1.score}/3 vs #{@player_2.name}: #{@player_2.score}/3"
  end

  #Triggers at Game Over
  def winner(player)
    puts "WE HAVE A WINNER!!!!"
    puts "#{player.name} wins with #{player.score}/3"
    puts '-----GAME OVER-----'
    puts 'Ciao for now'
    exit(0)
  end

  #check to see if player score has reached 0
  def check_score
    if @player_1.lose
      winner(@player_2)
    elsif @player_2.lose
    winner(@player_1)
    end
  end

  #turn method, checks scores before allowing next turn
  def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    match_stats
    puts "-----NEW-TURN-----"
    turn
  end

end