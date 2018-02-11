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

def valid_move?(board, position)
  index = position.to_i-1
  index.between(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  !(board[index] == " ")
end

def move(board, position, token)
  index = position.to_i-1
  board[index] = token
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, "X")
    display_board(board)
  else
    turn(board)
end
end

def turn_count(board)

end
