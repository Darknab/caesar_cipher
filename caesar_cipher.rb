def cipher(text, shift)
    ascii_text = text.codepoints
    encrypted = []
    ascii_text.each_with_index do |element, index|
        if (element >= 97 && element <= 122 ) 
            encrypted[index] = element + shift
            check_overflow(encrypted[index], 97, 122)
        elsif (element >= 65 && element <= 90)
            encrypted[index] = element + shift
            check_overflow(encrypted[index], 65, 90)
        else encrypted[index] = element
        end 
    end
    result = []
    encrypted.each_with_index { |element,index| result[index] = element.chr}
    puts result.join
end

def check_overflow(element,min, max)
    if element < min
        element = element + 26
    elsif element > max
        element = element -26
    end
end

puts "Please enter a text to encrypt"
text = gets.chomp
puts "Please choose a shift"
shift = gets.chomp.to_i

cipher(text, shift)