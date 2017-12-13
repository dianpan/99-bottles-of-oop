class Bottles

  def verse(num)
    if num == 1
      one_bottle_verse
    elsif num == 0
      zero_bottle_verse
    else
      default_verse(num)
    end
  end

  def verses(max, min)
    max.downto(min).map { |num| verse(num) }.join('\n')
  end

  def song
    verses(starting_bottle_count, ending_bottle_count)
  end

  private

  def starting_bottle_count
    99
  end

  def ending_bottle_count
    0
  end

  def default_verse(num)
    <<~HEREDOC
      #{num} bottles of beer on the wall, #{num} bottles of beer.
      Take one down and pass it around, #{num-1} #{bottle_or_bottles} of beer on the wall.
    HEREDOC
  end

  def bottle_or_bottles
    num == 2 ? 'bottle' : 'bottles'
  end

  def one_bottle_verse
    <<~HEREDOC
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
    HEREDOC
  end

  def zero_bottle_verse
    <<~HEREDOC
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    HEREDOC
  end
end
