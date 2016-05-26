def solve_cipher(input, x)
  input_arr = Array.new(input.chars)
  decoded_message = ""
  input_arr.each do | char | 
      shifted_char = (char.ord + x).chr
  decoded_message += shifted_char
  end
  puts decoded_message
end

solve_cipher("p|b uhdo qdph lv grqdog gxfn", -3)