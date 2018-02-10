def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index <= 8 && index >= 0 == true &&
  position_taken?(board, index) == false
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def move(board, position, token)
  index = position-1
  board[index] = token
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, current_player(board))
    board
  else valid_move?(board, index) == false
    turn(board)
  end
end
