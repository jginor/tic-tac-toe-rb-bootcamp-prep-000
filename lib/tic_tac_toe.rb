WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
  ]
  
def display_board(board)
puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
puts ("-----------")
puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
puts ("-----------")
puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(number)
  number = number.to_i
  number = number - 1
end

def move(array, index, value)
  array[index] = value
end

def position_taken?(board, index)
if    board[index]==" " || board[index]=="" || board[index]==nil
false 
elsif board[index] == "" 
  true 
else 
  true 
end
end

def valid_move?(board, index)
  if position_taken?(board, index)==true
    false
  elsif index.to_i > 9 || index.to_i < 0
    false
  else 
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip.to_i - 1
  input_to_index(number)
  if valid_move?(board, number) == true
    move(board, number, "X")
    display_board(board)
  else
    turn(board)
  end
end

