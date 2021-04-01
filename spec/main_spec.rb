require_relative '../lib/linter'
require_relative '../lib/stylinters'
describe Stylint do
describe '#braces' do
  linter = Stylint.new('../spec/stylint.css')
    it 'checks if there are two braces on the same line' do
      r = linter.send(:braces, '{}', 6)
      expect(r).not_to eql(["Extra braces detected on the line number 6 \u{1f91a} \u{1f91a} \u{1f91a}"])
    end
  end
  describe '#semicolons' do
    linter = Stylint.new('../spec/stylint.css')
      it 'checks if there are two braces on the same line' do
        r = linter.send(:semicolons, ';;', 5)
        expect(r).not_to eql(["Extra semicolon detected on the line number 5 \u{1f91a} \u{1f91a} \u{1f91a}"])
      end
    end

    describe '#quote' do
      linter = Stylint.new('../spec/stylint.css')
        it 'checks if there are two braces on the same line' do
          r = linter.send(:quote, "'", 7)
          expect(r).not_to eql(["You have single quotes on the line number 7 \u{1f91a} \u{1f91a} \u{1f91a}"])
        end
      end

      describe '#dobl_quote' do
        linter = Stylint.new('../spec/stylint.css')
          it 'checks if there are two braces on the same line' do
            r = linter.send(:dobl_quote, '"', 9)
            expect(r).not_to eql(["You have double quotes on the line number 9 \u{1f91a} \u{1f91a} \u{1f91a}"])
          end
        end

        describe '#tail_space' do
          linter = Stylint.new('../spec/stylint.css')
            it 'checks if there are two braces on the same line' do
              r = linter.send(:tail_space, ' ', 1)
              expect(r).not_to eql(["Tailing spaces have been detected on the line number 1 \u{1f91a} \u{1f91a} \u{1f91a}"])
            end
          end
          describe '#bracket' do
            linter = Stylint.new('../spec/stylint.css')
              it 'checks if there are two braces on the same line' do
                r = linter.send(:bracket, ']', 2)
                expect(r).not_to eql(["Tailing spaces have been detected on the line number 2 \u{1f91a} \u{1f91a} \u{1f91a}"])
              end
            end
          
            describe '#commicolon' do
              linter = Stylint.new('../spec/stylint.css')
                it 'checks if there are two braces on the same line' do
                  r = linter.send(:commicolon, ',', 4)
                  expect(r).not_to eql(["Comma after the semicolon on the line number 4 \u{1f91a} \u{1f91a} \u{1f91a}"])
                end
              end
              describe '#comma' do
                linter = Stylint.new('../spec/stylint.css')
                  it 'checks if there are two braces on the same line' do
                    r = linter.send(:comma, ', ', 8)
                    expect(r).not_to eql(["Space must be after the comma on the line number 8 \u{1f91a} \u{1f91a} \u{1f91a}"])
                  end
                end
end 