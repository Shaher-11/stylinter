module Stylinters
  def semicolons(line, number)
    @errors << "Extra semicolon detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(';;')
  end

  def quote(line, number)
    @errors << "You have single quotes on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?("'")
  end

  def dobl_quote(line, number)
    @errors << "You have double quotes on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?('"')
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

  def commicolon(line, number)
    @errors << "Comma after the semicolon on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(';,')
  end

  def comma(line, number)
    return unless line.include?(',')

    comt = line.split(',')[1]
    @errors << "Space must be after the comma on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if comt[0] != ' '
  end

  def font(line, number)
    return unless line.include?('font-weight') && !line.match(/\d/i)

    @errors << "The font weight should be a number on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red)
  end

  def long_line(line, number)
    return unless line.count('word') > 7

    @errors << "Avoide using log lines of code  on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red)
  end

  def zero(line, number)
    return unless line.include?(':')

    val = line.split(':')[1]
    decimals = val.gsub(/[^\d,.]/i, '')
    @errors << "Zero must come before the decimal on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red) if decimals[0] == '.'
  end

  

end
