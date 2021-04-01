require_relative '../lib/linter'
require_relative '../lib/stylinters'

describe '#braces' do
  linter = Stylint.new('./spec/stylint.css')
    it 'checks if there are two braces on the same line' do
      r = linter.send(:braces, '{}', 6)
      expect(r).not_to eql(["braces has been detected"])
    end
end