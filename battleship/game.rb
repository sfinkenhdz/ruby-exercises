class Game

def initialize(players)
  @players = players
end

def start_game
  make_ships
  create_board
end

def make_ships
  @fleet = []
  @fleet << Ship.new("carrier", 5)
  @fleet << Ship.new("battleship", 4)
  @fleet << Ship.new("cruiser", 3)
  @fleet << Ship.new("destroyer1", 2)
  @fleet << Ship.new("destroyer2", 2)
  @fleet << Ship.new("sub1", 1)
  @fleet << Ship.new("sub2", 1)
end

def create_board
  @board = []
  @board << ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
  counter = 1
  until counter == 11
    @array = Array.new(10, "-")
    @array[0] = counter
    @board << @array
    counter += 1
  end
end

def place_all_ships
end

def request_ship_placement
   # request ships for all 5 ships
   # check that for named ship, and unplaced
  puts "Where would you like to place your ship?"
  @place = gets.chomp
  puts "Which ship?"
  @ship = gets.chomp

end

def place_ship

end






end

# | Ship       | Size | Quantity |
# | :--------- | ----:| --------:|
# | Carrier    | 5    | 1        |
# | Battleship | 4    | 1        |
# | Cruiser    | 3    | 1        |
# | Destroyer  | 2    | 2        |
# | Submarine  | 1    | 2        |




game = Game.new(1)
game.create_board
game.request_ship_placement
