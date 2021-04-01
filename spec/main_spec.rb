require_relative '../lib/linter'
require_relative '../lib/stylinters'
describe Stylint do
  let(:linter) { Stylint.new('../spec/stylint.css') }
  describe '#braces_check' do
    it 'checks if there are two braces on the same line' do
      r = linter.send(:braces_check, '{}', 6)
      expect(r).not_to eql(["Extra braces detected on the line number 6 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end

    it 'checks if there are no two braces on the same line' do
      r = linter.send(:braces_check, '{}', 6)
      expect(r).to eql(nil && false)
    end
  end
  describe '#semicolons_check' do
    it 'checks if there are two semicollons on the same line' do
      r = linter.send(:semicolons_check, ';;', 5)
      expect(r).not_to eql(["Extra semicolon detected on the line number 5 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no two semicolon on the same line' do
      r = linter.send(:semicolons_check, ' ', 17)
      expect(r).to eql(nil && false)
    end
  end

  describe '#quote_check' do
    it 'checks if there are single quote on the same line' do
      r = linter.send(:quote_check, "'", 7)
      expect(r).not_to eql(["You have single quotes on the line number 7 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no single qoute on the same line' do
      r = linter.send(:quote_check, ' ', 7)
      expect(r).to eql(nil && false)
    end
  end

  describe '#dobl_quote_check' do
    it 'checks if there are double qoutes on the same line' do
      r = linter.send(:dobl_quote_check, '"', 9)
      expect(r).not_to eql(["You have double quotes on the line number 9 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no double qoutes on the same line' do
      r = linter.send(:dobl_quote_check, ' ', 9)
      expect(r).to eql(nil && false)
    end
  end

  describe '#tail_space_check' do
    it 'checks if there are tail spacing  on the same line' do
      r = linter.send(:tail_space_check, ' ', 1)
      expect(r).not_to eql(["Tailing spaces have been detected on the line number 1 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no tail spacing on the same line' do
      r = linter.send(:tail_space_check, '', 1)
      expect(r).to eql(nil && false)
    end
  end
  describe '#bracket_check' do
    it 'checks if there are bracket on the same line' do
      r = linter.send(:bracket_check, ']', 2)
      expect(r).not_to eql(["Tailing spaces have been detected on the line number 2 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no bracket on the same line' do
      r = linter.send(:bracket_check, '', 2)
      expect(r).to eql(nil && false)
    end
  end

  describe '#commicolon_check' do
    it 'checks if there are comma  on the same line' do
      r = linter.send(:commicolon_check, ',', 4)
      expect(r).not_to eql(["Comma after the semicolon on the line number 4 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no comma on the same line' do
      r = linter.send(:commicolon_check, '', 4)
      expect(r).to eql(nil && false)
    end
  end
  describe '#comma_check' do
    it 'checks if there are two braces on the same line' do
      r = linter.send(:comma_check, ', ', 8)
      expect(r).not_to eql(["Space must be after the comma on the line number 8 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no comma on the same line' do
      r = linter.send(:commicolon_check, '', 8)
      expect(r).to eql(nil && false)
    end
  end

  describe '#font_check' do
    it 'checks if the font weight is a number on the same line' do
      r = linter.send(:font_check, 'bold', 10)
      expect(r).not_to eql(["The font weight should be a number on the line number 10 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if the font weight is not a number on the same line' do
      r = linter.send(:font_check, '700', 10)
      expect(r).to eql(nil && false)
    end
  end
  describe '#long_line_check' do
    it 'checks if the line is too long on the same line' do
      r = linter.send(:font_check, '7 ', 10)
      expect(r).not_to eql(["Avoide using log lines of code  on the line number on the line number 11 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if the line is not too long on the same line' do
      r = linter.send(:font_check, ' ', 10)
      expect(r).to eql(nil && false)
    end
  end

  describe '#comment_check' do
    it 'checks if there is amuilt line comment on the same line' do
      r = linter.send(:comment_check, '/* */ ', 12)
      expect(r).not_to eql(["Replace multi line with a single line comment on the line number 12 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no multi line comments on the same line' do
      r = linter.send(:comment_check, '', 12)
      expect(r).to eql(nil && false)
    end
  end
  describe '#capital_check' do
    it 'checks if there are capital letters or words on the same line' do
      r = linter.send(:font_check, 'FFF ', 14)
      expect(r).not_to eql(["Replace the capital letters  on the line number 14 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no capital letters or words on the same line' do
      r = linter.send(:font_check, 'fff ', 14)
      expect(r).to eql(nil && false)
    end
  end

  describe '#zero_check' do
    it 'checks if there are zeros coming before the decimals on the same line' do
      r = linter.send(:zero_check, '00. ', 15)
      expect(r).not_to eql(["Zero must come before the decimal on the line number 15 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no zeros coming before the decimals on the same line' do
      r = linter.send(:zero_check, '.1 ', 15)
      expect(r).to eql(nil && false)
    end
  end

  describe '#dobl_zero_check' do
    it 'checks how the zeros after the decimals on the line ' do
      r = linter.send(:dobl_zero_check, '7.0 ', 16)
      expect(r).not_to eql(["Zero must come after the decimal on the line number 16 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
    it 'checks if there are no zeros coming after the decimals on the same line' do
      r = linter.send(:zero_check, '.000 ', 15)
      expect(r).to eql(nil && false)
    end
  end
end
