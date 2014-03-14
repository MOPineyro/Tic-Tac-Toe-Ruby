class Board
  attr_reader :board_row1, :board_row2, :board_row3, :player1, :player2, :turn, :clear

  def clear
    @turn = 0
  end

  def initialize
    @player1 = "X"
    @player2 = "O"
    @board_row1 = ["1","2","3"]
    @board_row2 = ["4","5","6"]
    @board_row3 = ["7","8","9"]
    @whos_turn = "X"
    @turn = 0
  end

  def turn
    # @turn = 0
    # until @turn == 9
    #   if @turn.odd?
    #     @whos_turn = "X"
    #   else
    #     @whos_turn= "O"
    #   end
    # end
    @turn += 1
  end

  def mark(users_choice)
    # self.turn
    @board_row1.each do |space|
      space.gsub!(users_choice, @whos_turn)
    end
     @board_row2.each do |space|
      space.gsub!(users_choice, @whos_turn)
    end
     @board_row3.each do |space|
      space.gsub!(users_choice, @whos_turn)
    end
  end

end
