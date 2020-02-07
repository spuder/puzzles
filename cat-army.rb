#!/usr/bin/env ruby

# Answer to this puzzle https://www.youtube.com/watch?v=YeMVoJKn1Tg


# 2, 10, 14

# 10, 12, 14, 15, 17, 19, 20 21, 22, 24, 25*, 26, 27, 28, 29, 30, 32, 34, 35, 36*, 37, 38, 39, 40, 41, 42, 43, 45, 47, 49*
# 4, 9, 16, 25, 36, 49
inputs=[5,7,5,5,7,7,'sqrt',5,5,'sqrt','sqrt',7,'sqrt', 7,5,5,5,5,5,7,7,'sqrt',7]
history=[]
output=0

inputs.each do |i|
    if i == 'sqrt'
        output = Integer.sqrt(output)
    else
        output = output + i
    end

    if output == 2 || output == 10 || output == 14
        puts "*** #{output} ***"
    else
        puts output
    end
    if history.include?(output)
        raise "Duplicate number #{output}" 
    else
        history << output
    end

end
