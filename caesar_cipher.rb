def cipher(text, shift)
    ascii_text = text.codepoints
    encrypted = []
    ascii_text.each_with_index do |element, index|
        puts "I'm #{element.chr}, in index #{index}"
        if (element >= 97 && element <= 122 )
            puts "I'm #{element.chr} and i'm in the downcase if" 
            encrypted[index] = check_overflow((element + shift), 97, 122)
            puts "This is for downcase #{encrypted[index]}"
        elsif (element >= 65 && element <= 90)
            puts "I'm #{element.chr} and i'm in the upcase if" 
            encrypted[index] = check_overflow((element + shift), 65, 90)
            puts "This is for upcase #{encrypted[index]}"
        else encrypted[index] = element
        end 
    end
    puts encrypted
    result = []
    encrypted.each_with_index { |element,index| result[index] = element.chr}
    puts result.join
end

def check_overflow(element,min, max)
    if element < min
        element = element + 26
    elsif element > max
        element = element -26
    else element = element
    end
end

puts "Please enter a text to encrypt"
text = gets.chomp
puts "Please choose a shift"
shift = gets.chomp.to_i

cipher(text, shift)