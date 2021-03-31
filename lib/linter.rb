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
    end

    if @errors.length.zero?
      @errors << "All checks have succefully passed ! No errors detected. \u{1F389} \u{1F389} \u{1F389} ".colorize(:light_green)
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end
  
end

class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end