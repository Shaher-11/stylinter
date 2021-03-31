require 'colorize'
class Stylint
  attr_reader :file_path, :errors

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end

def check
  number = 0
  File.readlines(@file_path).each do |line|
  number += 1
  end

  

end