class Game

  attr_accessor :player_1, :player_2

  def initialize (player1_hand, player2_hand)
   
    @player_1 = player1_hand
    @player_2 = player2_hand
     

  end

#---- methods

   def turn()
    player1_win = "Player One wins!"
    player2_win = "Player Two wins!"
  
    if @player_1 == 'rock' && @player_2 == 'paper'
      return player1_win

    elsif @player_1 == 'paper' && @player_2 == 'rock'
      return player2_win

    elsif @player_1 == 'rock' && @player_2 == 'scissors'
      return player1_win
    
    elsif @player_2 == 'scissors' && @player_1 == 'rock'
      return player2_win

      elsif @player_1 == 'scissors' && @player_2 == 'rock'
        return player2_win
      elsif @player_1 == @player_2
        return "It's a tie. You both played #{@player_1}. Try Again!"
    end
   end

   # def check_tie?
   #   if @player_1 == @player_2
   #     return true
   #   else
   #      return false
   # end

end