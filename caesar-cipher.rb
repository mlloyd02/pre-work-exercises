def solve_cipher(input, n=-3)
  new_array = input.split(//).map do |x|
  	x.ord 
  end
  shift = new_array.map do |y|
  	if y == 32
  	  y 
    elsif (y + n < 97 || y + n > 122)
      while y + n < 97
  	    y = y + 26
      end
      while y + n > 122
  	    y = y - 26
      end
    else
      y + n
    end
  end
  to_chr = shift.map do |z|
  	z.chr
  end
  puts to_chr.join
end

solve_cipher("p| uhdo qdph lv grqdog gxfn")