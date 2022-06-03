def caesar_cipher(uncipheredString, step)
    cipheredString = ""

    uncipheredString.each_byte do |i|
        if i >= 65 and i <= 90
            if i + step > 90
                cipheredString += (65 + ((i + step) % 90) - 1).chr
            elsif
                cipheredString += (i + step).chr
            end
        elsif i >= 97 and i <= 122
            if i + step > 122
                cipheredString += (97 + ((i + step) % 122) - 1).chr
            elsif
                cipheredString += (i + step).chr
            end
        elsif
            cipheredString += i.chr
        end
    end

    puts cipheredString
end

caesar_cipher('abcABC abcabc ]][]["~', 3)

## A - 65, Z - 90
## a - 97, z - 122 