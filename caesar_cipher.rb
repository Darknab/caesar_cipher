def cipher(text, shift)
  ascii_text = text.codepoints
  encrypted = []
  ascii_text.each_with_index do |element, index|
    encrypted[index] = if element >= 97 && element <= 122
                         check_overflow((element + shift), 97, 122)
                       elsif element >= 65 && element <= 90
                         check_overflow((element + shift), 65, 90)
                       else
                         element
                       end
  end
  result = []
  encrypted.each_with_index { |element, index| result[index] = element.chr }
  puts result.join
end

def check_overflow(element, min, max)
  element = if element < min
              element + 26
            elsif element > max
              element - 26
            else
              element
            end


end

puts 'Please enter a text to encrypt'
text = gets.chomp
puts 'Please choose a shift (an integer between - 26 and 26)'
shift = gets.chomp.to_i
while shift > 26 || shift < -26
  puts 'out of range, please inter a correct number for the shift'
  shift = gets.chomp.to_i
end
cipher(text, shift)
