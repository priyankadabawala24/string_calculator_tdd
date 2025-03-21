class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
      
        delimiter = /,|\n/
        if numbers.start_with?('//')
            parts = numbers.split("\n", 2)
            delimiter = Regexp.escape(parts[0][2..])
            numbers = parts[1]
        end
        numbers_array = numbers.split(/#{delimiter}/).map(&:to_i)

        negatives = numbers_array.select { |num| num.negative? }

        unless negatives.empty?
            message = "negative numbers not allowed #{negatives.join(',')}"
            puts "DEBUG: Raising Exception -> #{message}"  # Print debug info
            raise RuntimeError message
        end
    
        numbers_array.sum
    end
end
  