require 'string_calculator'

RSpec.describe StringCalculator do
    describe '#add' do
        it 'returns 0 for an empty string' do
            expect(StringCalculator.add('')).to eq(0)
        end

        it 'returns the number itself for a single number' do
            expect(StringCalculator.add('1')).to eq(1)
        end

        it 'returns the sum of two comma-separated numbers' do
            expect(StringCalculator.add('1,5')).to eq(6)
        end

        it 'returns the sum of more than two comma-separated numbers' do
            expect(StringCalculator.add('1,5,2,4')).to eq(12)
        end

        it 'handles new line as a separator' do
            expect(StringCalculator.add("1\n2,3")).to eq(6)
        end

        it 'supports different delimiters specified at the beginning' do
            expect(StringCalculator.add("//;\n1;2")).to eq(3)
            expect(StringCalculator.add("//*\n1*2*6")).to eq(9)
        end

        it 'raises an exception for negative numbers' do
            expect { StringCalculator.add("1,-2,3,-4") }
              .to raise_error(RuntimeError, "negative numbers not allowed -2,-4")
        end
    end
end