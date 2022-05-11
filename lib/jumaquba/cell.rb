# frozen_string_literal: true

# This Class represents a cell
class Cell
  def initialize(state)
    @is_alive = state
  end
end

array = [['...*...'], ['.......'], ['.......'], ['.......']]
puts array
# puts cell1 = Cell.new(false)
# puts cell1.inspect
