module Stylinters
  def semicolons(line, number)
    @errors << "Extra semicolon detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(';;')
  end
end