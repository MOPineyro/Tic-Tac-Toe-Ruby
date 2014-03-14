require 'rspec'
require 'tic_tac_toe'

describe "Board" do
  it "initializes an instance of Board with 9 spaces" do
    test_board = Board.new
    test_board.should be_an_instance_of Board
  end
  describe "mark" do
    it "marks a player's spot on the board" do
      test_board = Board.new
      # test_board.clear
      puts test_board.turn
      users_choice = "2"
      puts test_board.turn
      test_board.mark(users_choice)
      test_board.board_row1.should eq ["1", "X", "3"]
      users_choice = "3"
      puts test_board.turn
      test_board.mark(users_choice)
      test_board.board_row1.should eq ["1", "X", "X"]
    end
  end
  # describe "turn" do
  #   it "makes a turn counter" do
  #     test_board = Board.new
  #     users_choice = "2"
  #     test_board.board_row1.should eq ["1", "X", "3"]
  #   end
  # end

end

