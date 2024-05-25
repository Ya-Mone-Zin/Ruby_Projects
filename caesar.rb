def caesar_cipher(string,key) 
    upchar_array = ("A".."Z").to_a
    schar_array = ("a".."z").to_a
    encrypted = ""
    input_array = string.split("").to_a
    input_array.each do |x| 
        if upchar_array.include? x
            encrypted += upchar_array[(upchar_array.index(x)+key)%26]
        elsif schar_array.include? x
            encrypted +=  schar_array[(schar_array.index(x)+key)%26]
        else
            encrypted += x
        end
    end
    return encrypted
end

def decrypt_cipher(string,key)
    upchar_array = ("A".."Z").to_a
    schar_array = ("a".."z").to_a
    decrypted = ""
    input_array = string.split("").to_a
    input_array.each do |x| 
        if upchar_array.include? x
            decrypted += upchar_array[(upchar_array.index(x)-key)%26]
        elsif schar_array.include? x
            decrypted +=  schar_array[(schar_array.index(x)-key)%26]
        else
            decrypted += x
        end
    end
    return decrypted
end
encrypted = caesar_cipher("Hello!",1)
puts encrypted
puts decrypt_cipher(encrypted,1)