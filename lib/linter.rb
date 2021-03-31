require 'colorize'
require_relative('../lib/stylinters')
class Stylint
  include Stylinters

  attr_reader :file_path, :errors

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end
  def check
    number = 0
    File.readlines(@file_path).each do |line|
      number += 1
      semicolons(line, number)
      tail_space(line, number)
      braces(line, number)
      bracket(line, number)
      commicolon(line, number)
      comma(line, number)
      font(line, number)
      long_line(line, number)
      zero(line, number)
      quote(line, number)
      dobl_quote(line, number)
    end


    if @errors.length.zero?
      @errors << "All checks have succefully passed ! No errors detected. \u{1F389} \u{1F389} \u{1F389} ".colorize(:light_green)
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end
end
