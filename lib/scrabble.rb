class Scrabble

  def score(word)
    
    return score.to_i = 0 if word == nil
    individual_letters = word.split('')
    score = 0
    individual_letters.each do |letter|
      point_value = point_values[letter.upcase]
      score = score.to_i + point_value.to_i
    end
    score.to_i
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
