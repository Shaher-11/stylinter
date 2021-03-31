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
      semicolons(line, number)
      number += 1
    end

    if @errors.length.zero?
      @errors << "All checks have succefully passed ! No errors detected. \u{1F389} \u{1F389} \u{1F389} ".colorize(:light_green)
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end

  
end
