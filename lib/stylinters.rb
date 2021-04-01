module Stylinters
  def semicolons_check(line, number)
    @errors << "Extra semicolon detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(';;')
  end

  def quote_check(line, number)
    @errors << "You have single quotes on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?("'")
  end

  def dobl_quote_check(line, number)
    @errors << "You have double quotes on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?('"')
  end

  def tail_space_check(line, number)
    stripped = line.delete("\n")
    @errors << "Tailing spaces have been detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red) if stripped.end_with?(' ')
  end

  def braces_check(line, number)
    @errors << "Extra braces detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?('}}')
  end

  def bracket_check(line, number)
    @errors << "brackets been detected on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(']')
  end

  def commicolon_check(line, number)
    @errors << "Comma after the semicolon on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line.include?(';,')
  end

  def comma_check(line, number)
    return unless line.include?(',')

    comt = line.split(',')[1]
    @errors << "Space must be after the comma on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if comt[0] != ' '
  end

  def font_check(line, number)
    return unless line.include?('font-weight') && !line.match(/\d/i)

    @errors << "The font weight should be a number on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red)
  end

  def long_line_check(line, number)
    return unless line.count('word') > 7

    @errors << "Avoide using log lines of code  on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red)
  end

  def comment_check(line, number)
    @errors << "Replace multi line with a single line comment on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_yellow) if line.to_s.match('/* */')
  end

  def capital_check(line, number)
    @errors << "Replace the capital letters  on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:light_red) if line =~ /[A-Z]/
  end

  private

  def zero_check(line, number)
    return unless line.include?(':')

    val = line.split(':')[1]
    decimals = val.gsub(/[^\d,.]/i, '')
    @errors << "Zero must come before the decimal on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red) if decimals[0] == '.'
  end

  def dobl_zero_check(line, number)
    return unless line.include?(':')

    val = line.split(':')[1]
    decimals = val.gsub(/[^\d,.]/i, '')
    @errors << "Use only one zero for the decimal on the line number #{number} \u{1f91a} \u{1f91a} \u{1f91a}".colorize(:red) if decimals[0o0] == '.'
  end
end
