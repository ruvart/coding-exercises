=begin
This is the solution for the Check permutation problem, in Ruby

:Author: Ruvart
:Email: contacto@ruvart.com
=end


require 'date'


def checkPermutation_1?(str_1, str_2)
    str_len = str_1.length

    if str_len != str_2.length
        return false
    end

    sorted_str_1 = str_1.chars.sort(&:casecmp).join
    sorted_str_2 = str_2.chars.sort(&:casecmp).join

    if sorted_str_1 != sorted_str_2
        return false
    end

    return true
end


def checkPermutation_2?(str_1, str_2)
    str_len = str_1.length

    if str_len != str_2.length
        return false
    end

    sorted_str_1 = str_1.chars.sort(&:casecmp)
    sorted_str_2 = str_2.chars.sort(&:casecmp)

    i = 0
    sorted_str_1.each do |v|
        if v != sorted_str_2[i]
            return false
        end

        i = i + 1
    end

    return true
end


def checkPermutation_3?(str_1, str_2)
    str_len = str_1.length

    if str_len != str_2.length
        return false
    end

    sorted_str_1 = str_1.chars.sort(&:casecmp)
    sorted_str_2 = str_2.chars.sort(&:casecmp)

    if sorted_str_1 != sorted_str_2
        return false
    end

    return true
end


str_1 = "1234567891011121314151617181920"
str_2 = "1678011718191213149115162345120"
str_3 = "1234567891011121314151617181920"
str_4 = "1234567891022221314151617181920"


puts "checkPermutation_1?\n\"#{str_1}\"\n\"#{str_2}\"\nResult:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = checkPermutation_1?(str_1,str_2)
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "Not valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end

puts "checkPermutation_1?\n\"#{str_3}\"\n\"#{str_4}\"\nResult:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = checkPermutation_1?(str_3,str_4)
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "Not valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end


puts "checkPermutation_2?\n\"#{str_1}\"\n\"#{str_2}\"\nResult:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = checkPermutation_2?(str_1,str_2)
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "Not valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end

puts "checkPermutation_2?\n\"#{str_3}\"\n\"#{str_4}\"\nResult:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = checkPermutation_2?(str_3,str_4)
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "Not valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end


puts "checkPermutation_3?\n\"#{str_1}\"\n\"#{str_2}\"\nResult:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = checkPermutation_3?(str_1,str_2)
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "Not valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end

puts "checkPermutation_3?\n\"#{str_3}\"\n\"#{str_4}\"\nResult:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = checkPermutation_3?(str_3,str_4)
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "Not valid permuted strings.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end