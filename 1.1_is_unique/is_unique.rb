=begin
This is the solution for the Is unique problem, in Ruby

:Author: Ruvart
:Email: contacto@ruvart.com
=end


require 'date'


##
# If the string length is less than 2 return true.
# Transform the string into chars, then sort those chars, finally compare each char with the previous one and if they are the same return false, else return true
#
# :Param: String str
# :Return: Bool
def isUnique_1?(str)
    str_len = str.length

    if str_len < 2
        return false
    end

    sorted_str = str.chars.sort(&:casecmp)

    (1..(str_len-1)).each do |x|
        if sorted_str[x-1] == sorted_str[x]
            return false
        end
    end

    return true
end


##
# If the string length is less than 2 return true.
# Transform the string into chars, then select one for each diferent char and compare the length of the product with the length of the original string,
# if the lengths are different return false, else return true
# 
# :Param: String str
# :Return: Bool
def isUnique_2?(str)
    str_len = str.length

    if str_len < 2
        return false
    end

    str_array_unique = str.chars.uniq

    if str_len != str_array_unique.length
        return false
    end

    return true
end


##
# If the string length is less than 2 return true.
# For each char in the string search for the same in the substring from the position of this char to the end of the string
# 
# :Param: String str
# :Return: Bool
def isUnique_3?(str)
    str_len = str.length

    if str_len < 2
        return false
    end

    for x in (1..(str_len-1))
        if !str.index(str[x-1],x).nil?
            return false
        end
    end

    return true
end



str_1 = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"
str_2 = "abcdefghijklmnopqrstuvwxyz "


puts "isUnique_1? - (#{str_1.length}) \"#{str_1}\":\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = isUnique_1? str_1
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "No son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end

puts "isUnique_1? - (#{str_2.length}) \"#{str_2}\":\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = isUnique_1? str_2
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "No son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end


puts "isUnique_2? - (#{str_1.length}) \"#{str_1}\":\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = isUnique_2? str_1
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "No son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end

puts "isUnique_2? - (#{str_2.length}) \"#{str_2}\":\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = isUnique_2? str_2
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "No son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end


puts "isUnique_3? - (#{str_1.length}) \"#{str_1}\":\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = isUnique_3? str_1
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "No son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end

puts "isUnique_3? - (#{str_2.length}) \"#{str_2}\":\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = isUnique_3? str_2
t_fin = DateTime.now.strftime('%Q').to_i
if result
    puts "Son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
else
    puts "No son caracteres únicos.\t Tiempo (milisec): " + (t_fin - t_ini).to_s + "\n\n"
end