require './MathQuestion.rb'
require './Player.rb'

class Gameloop
attr_accessor :player1, :player2, :current_player
  def initialize   
  @player1 = Player.new('Player1')
  @player2 = Player.new('Player2')
  @current_player = @player1
  end
  
  def switch_player 
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1 
  end
end

  def round_score
    @player1.print_lives
    @player2.print_lives
  end

  
  def game_round
    math_question = MathQuestion.new
    answer = math_question.print_question(@current_player.name)
    answer_correct = math_question.check_answer(answer)
    @current_player.take_damage unless answer_correct
    round_score
    switch_player  
  end


  def start_game
    until player1.dead? || player2.dead?
      game_round
    end
  end
end
