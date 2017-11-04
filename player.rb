class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treature
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      if @lives < 1
        restart
      end
    end
  end

  def restart
    puts "You die. Restarted game!"
    initialize
  end

end

player1 = Player.new
player2 = Player.new

player1.level_up
(1..20).each do
  player1.collect_treature
end

p player1

player2.collect_treature
(1..5).each {
player2.do_battle(7)
player2.do_battle(5)
}

p player2
