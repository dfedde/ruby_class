class Board
  def initialize(height:0, width:0)
    @height = height
    @width = width
  end

  def draw
    "#{top}\n#{repeat_string(cells + "\n", @height, middle + "\n")}#{bottom}"
  end

  private
  def top
    line('┌', '───────', '┬', '┐')
  end

  def bottom
    line('└', '───────', '┴', '┘')
  end

  def middle
    line('├', '───────', '┼', '┤')
  end

  def cells
    repeat_string(line('│', '       ', '│', '│'), 3, "\n")
  end

  def line(left, middle, joiner, right)
    "#{left}#{repeat_string(middle, @width, joiner)}#{right}"
  end

  def repeat_string(string, times, joiner = nil)
    Array.new(times, string).join(joiner)
  end
end
