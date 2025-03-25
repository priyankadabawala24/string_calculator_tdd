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
    end
end