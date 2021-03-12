def caesar_cipher(string, shift)
    if shift < 0
        while shift <= -26
            shift += 26
        end
    elsif shift >= 26
        while shift >= 26
            shift -= 26
        end        
    end
    cipher = string.split('').map{|letter| letter.ord}
    cipher.map! do |letter|
        if letter > 64 && letter < 91
            if letter + shift > 90
                letter = ((letter + shift - 90) + 64).chr
            elsif letter + shift < 65
                letter = (90 - (64 - letter + shift)).chr
            else
                letter = (letter + shift).chr
            end
        elsif letter > 96 && letter < 123
            if letter + shift > 122
                letter = ((letter + shift -122) + 96).chr
            elsif letter + shift < 97
                letter = (122 - (97 - (letter + shift))).chr
            else
                letter = (letter + shift).chr
            end
        else
            letter.chr
        end
    end
    puts cipher.join('')
end