module Promt

  def Promt.getUserInput(promt_text)
    puts promt_text
    STDOUT.flush
    gets.chomp
  end

end

