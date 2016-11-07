class Player::Human < Player
  def move(board)
    puts "Plese enter a position 1-9"
    input = gets.strip
  end
end
