module Promt

  def Promt.prompt(promt_text)
    puts promt_text
    STDOUT.flush
    gets.chomp
  end

end

