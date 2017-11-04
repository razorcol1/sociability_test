class ResultPrinter
  def print_result (points, answer)
    case points
    when 30..32 then puts answer[0]
    when 25..29 then puts answer[1]
    when 19..24 then puts answer[2]
    when 14..18 then puts answer[3]
    when 9..13 then puts answer[4]
    when 4..8 then puts answer[5]
    else puts answer[6]
    end
  end
end



