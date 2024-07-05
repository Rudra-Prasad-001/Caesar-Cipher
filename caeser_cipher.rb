def caesar_cipher(string, shift)
    if(shift < 0) then
        return puts "Shift must be greator than zero"
    end

    if(shift >= 26) then
        shift = shift % 26
    end

    original_ASCII_values = string.bytes

    modified_ASCII_values = original_ASCII_values.map  do |num|
        if(num >= 97 && num <=122) then
            num += shift
            if(num > 122) then
              num -= shift
              remainder = num % 122
              num = (97 + remainder) - 1 #because this includes 97 itself
            end
        end
        if(num >= 65 && num <= 90) then
            num += shift
            if(num > 90) then
                remainder = num % 90
                num = (65 + remainder) - 1 #because this includes 65 itself
            end
        end

        num 
    end

    ciphered_string = modified_ASCII_values.pack("C*")

    puts "#{ciphered_string}"
    
end

caesar_cipher("abc!" , 2) #cde!
caesar_cipher("xyz!" , 2) #zab!

caesar_cipher("What a string!", 5)
caesar_cipher("I love you" , 1)
caesar_cipher("ok" , 52)



