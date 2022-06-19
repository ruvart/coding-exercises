"""This is the solution for the urlify problem, in Python
"""

__author__ = "Ruvart"
__email__ = "contacto@ruvart.com"


import time


def urlify_1(text: str) -> str:
    """Split the string for each blank space, then join the pieces with '%20'"""
    text_split = text.split(' ')
    result     = "%20".join(text_split)

    return result


def urlify_2(text: str) -> str:
    """compare each character of the string, if it's equal to blank space change it with '%20' if not,
    returns the original character, then joins the list in to a string"""
    result = "".join([c if c != ' ' else '%20' for c in text])

    return result


str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna"


print(f"urlify_1:\n{str}:\n")
t_ini = time.process_time_ns()/1000000
result = urlify_1(str)
t_fin = time.process_time_ns()/1000000
print(f"[{t_fin - t_ini}] \"{result}\"\n")



print(f"urlify_2:\n{str}:\n")
t_ini = time.process_time_ns()/1000000
result = urlify_2(str)
t_fin = time.process_time_ns()/1000000
print(f"[{t_fin - t_ini}] \"{result}\"\n")