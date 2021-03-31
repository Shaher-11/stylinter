class Stylint
  attr_reader :file_path, :errors

  def initialize(file_path, errors)
    @file_path = file_path
    @errors = errors
  end
end
