class WheelOfFortune
  attr_reader :theme, :guesses

  def initialize (hash)
    @phrase = hash[:phrase]
    @theme = hash[:theme]
    @guesses = []
  end

  def to_s
    nil
  end

  def can_i_have?(input)
    formatinput = input.downcase
    @guesses.push formatinput
    phrase_array = @phrase.downcase.chars
    phrase_array.each do |letter|
      if (letter == formatinput)
        return true
      end
    end
    return false
  end

  def game_over?
    nil
  end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end
