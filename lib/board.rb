class Board
  attr_accessor :cells
  def initialize()
    self.reset!
  end
  def reset!
    @cells = Array.new(9, " ")
  end
  def display
    puts "| #{@cells[0]} | #{@cells[1]} | #{@cells[2]} |"
    puts "-----------"
    puts "| #{@cells[3]} | #{@cells[4]} | #{@cells[5]} |"
    puts "-----------"
    puts "| #{@cells[6]} | #{@cells[7]} | #{@cells[8]} |"
  end
  def position(user_input)
    @cells[user_input.to_i - 1]
  end
  def full?
    self.cells.all? { |cell|  cell =="X" || cell == "O"}
  end
  def turn_count
    self.cells.count {|cell| cell == "X" || cell == "O" }
  end
  def taken?(pos)
    self.position(pos) == "X" || self.position(pos) == "O"
  end
  def valid_move?(pos)
    !taken?(pos) && pos.to_i.between?(1, 9)  #betwween called on int
  end
  def update(pos,player)
    self.cells[pos.to_i - 1] = player.token
  end
end
