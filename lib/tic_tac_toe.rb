# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

# Define display_board that accepts a board and prints
# out the current state.
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#input_to_index
def input_to_index(input)
  index = input.to_i - 1
end

#move
def move(board, index, char = "X")
  board[index] = char
end


# rspec spec/01_tic_tac_toe_spec.rb

#turn_count
def turn_count(board)
  turns_taken = 0
  board.each do | space |
    if space == "X" || space == "O"
      turns_taken += 1
    end
  end
  turns_taken
end

#current_player
def current_player(board)
  if turn_count(board) % 2 == 0
    player = "X"
  else
    player = "O"
  end
  player = turn_count(board).even? ? "X" : "O"
end
