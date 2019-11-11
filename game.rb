class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end
  def start
    puts "We have new challengers! Welcome #{@player_1.name} and #{@player_2.name}!"
    turn
  end
  def match_stats
    puts "#{@player_1.name}: #{@player_1.score}/3 vs #{@player_2.name}: #{@player_2.score}/3"
  end

  def winner(player)
    puts "#{player.name} wins with #{player.score}/3"
    puts '-----GAME OVER-----'
    puts 'Ciao for now'
    exit(0)
  end

  def check_score
    if @player_1.lose
      winner(@player_2)
    elsif @player_2.lose
    winner(@player_1)
    end
  end

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