def caesar_cipher(offset, string)
    looped_offset = offset % 26
    offset_nums = []
    offset_string = []
    string.each_char do |letter| 
      if letter.ord + looped_offset > 122 
        offset_nums.push((letter.ord + looped_offset) - 26)
      elsif
        letter.ord < 97 || letter.ord > 122
        offset_nums.push(letter.ord)
      else
        offset_nums.push(letter.ord + looped_offset)
      end
    end
    offset_nums.each do |number| offset_string.push(number.chr)
    end
    offset_string.join
  end

puts caesar_cipher(3, "abc")

  puts("\nTests for #caesar_cipher")
  puts("===============================================")
      puts(
        'caesar_cipher(3, "abc") == "def": ' +
        (caesar_cipher(3, 'abc') == 'def').to_s
      )
      puts(
        'caesar_cipher(3, "abc xyz") == "def abc": ' +
        (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
      )
  puts("===============================================")