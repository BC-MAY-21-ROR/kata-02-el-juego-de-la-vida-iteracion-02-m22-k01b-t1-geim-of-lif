# frozen_string_literal: true

require 'matrix'

require './cell'

# class board
class Board
  WIDTH = 8
  HEIGHT = 4

  attr_reader(:cells, :height, :width)

  def initialize
    @height = HEIGHT
    @width = WIDTH
    @cells = Matrix.build(height, width) { Cell.new(false) }
  end

  def set_alive_cells
    alive_cells = rand(3..5)
    puts alive_cells
    alive_cells.times do
      x = rand(0..3)
      y = rand(0..7)
      @cells[x, y] = Cell.new(true)
    end
  end

  def draw_grid
    cells.each { |n| print n }
  end
end

board1 = Board.new

board1.set_alive_cells

board1.draw_grid
