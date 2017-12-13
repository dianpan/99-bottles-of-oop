class Bottles

  def verse(num)
    if num == 1
      one_bottle
    elsif num == 0
      zero_bottles
    else
      default(num)
    end
  end

  def verses(max, min)
    max.downto(min).map { |num| verse(num) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def default(num)
    <<~HEREDOC
      #{num} bottles of beer on the wall, #{num} bottles of beer.
      Take one down and pass it around, #{num-1} #{num == 2 ? 'bottle' : 'bottles'} of beer on the wall.
    HEREDOC
  end

  def one_bottle
    <<~HEREDOC
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
    HEREDOC
  end

  def zero_bottles
    <<~HEREDOC
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    HEREDOC
  end
end
