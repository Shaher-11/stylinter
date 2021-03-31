module Stylinters
  def semicolons(line, number)
    @errors << "Extra semicolon detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(';;')
  end
  def tail_space(line, number)
    stripped = line.delete("\n")
    @errors << "Trailing spaces have been detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red) if stripped.end_with?(' ')
  end
  def braces(line, number)
    @errors << "Extra braces detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?('}}')
  end
  def bracket(line, number)
    @errors << "brackets been detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(']')
  end
end