=begin
This is the solution for the urlify problem, in Ruby

:Author: Ruvart
:Email: contacto@ruvart.com
=end


require 'date'


def urlify_1(str)
    return str.split(' ').join('%20')
end


def urlify_2(str)
    str_chars = str.chars

    new_str = str_chars.map {|ch| ch == ' ' ? '%20' : ch}

    return new_str.join
end


str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna"


puts "urlify_1:\n#{str}:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = urlify_1 str
t_fin = DateTime.now.strftime('%Q').to_i
puts "[" + (t_fin - t_ini).to_s + "] \"#{result}\"\n\n"

puts "urlify_2:\n#{str}:\n"
t_ini = DateTime.now.strftime('%Q').to_i
result = urlify_2 str
t_fin = DateTime.now.strftime('%Q').to_i
puts "[" + (t_fin - t_ini).to_s + "] \"#{result}\"\n\n"