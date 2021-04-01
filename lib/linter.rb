require 'colorize'
require_relative('../lib/stylinters')
class Stylint
  include Stylinters

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end

  def check
    number = 0
    File.readlines(@file_path).each do |line|
      number += 1
      semicolons_check(line, number)
      tail_space_check(line, number)
      braces_check(line, number)
      bracket_check(line, number)
      commicolon_check(line, number)
      comma_check(line, number)
      font_check(line, number)
      long_line_check(line, number)
      zero_check(line, number)
      quote_check(line, number)
      dobl_quote_check(line, number)
      comment_check(line, number)
      dobl_zero_check(line, number)
      capital_check(line, number)
    end

    if @errors.length.zero?
      @errors << "All checks have succefully passed ! No errors detected. \u{1F389} \u{1F389} \u{1F389} ".colorize(:light_green)
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end
end
