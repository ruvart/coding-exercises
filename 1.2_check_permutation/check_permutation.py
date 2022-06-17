"""This is the solution for the Check permutation problem, in Python
"""

__author__ = "Ruvart"
__email__ = "contacto@ruvart.com"


import time


def checkPermutation_1(text_1: str, text_2: str) -> bool:
    """If the length of the 2 strings is different return false
    Sort the 2 strings then compare them, if they are equal return true, else return false"""

    str_len = len(text_1)

    if str_len != len(text_2):
        return False

    sorted_str_1 = sorted(text_1)
    sorted_str_2 = sorted(text_2)

    if sorted_str_1 != sorted_str_2:
        return False
    
    return True


def checkPermutation_2(text_1: str, text_2: str) -> bool:
    """If the length of the 2 strings is different return false
    Sort the 2 strings then compare each character on both strings at the same position, if they are different return false, else return true"""

    str_len = len(text_1)

    if str_len != len(text_2):
        return False

    sorted_str_1 = sorted(text_1)
    sorted_str_2 = sorted(text_2)

    for x in range(str_len):
        if sorted_str_1[x] != sorted_str_2[x]:
            return False
    
    return True


str_1 = "1234567891011121314151617181920"
str_2 = "1678011718191213149115162345120"
str_3 = "1234567891011121314151617181920"
str_4 = "1234567891022221314151617181920"


print(f"checkPermutation_1\n\"{str_1}\"\n\"{str_2}\"\nResult:")
t_ini = time.process_time_ns()/1000000
result = checkPermutation_1(str_1,str_2)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"Not valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")

print(f"checkPermutation_1\n\"{str_3}\"\n\"{str_4}\"\nResult:")
t_ini = time.process_time_ns()/1000000
result = checkPermutation_1(str_3,str_4)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"Not valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")



print(f"checkPermutation_2\n\"{str_1}\"\n\"{str_2}\"\nResult:")
t_ini = time.process_time_ns()/1000000
result = checkPermutation_2(str_1,str_2)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"Not valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")

print(f"checkPermutation_2\n\"{str_3}\"\n\"{str_4}\"\nResult:")
t_ini = time.process_time_ns()/1000000
result = checkPermutation_2(str_3,str_4)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"Not valid permuted strings.\t Tiempo (milisec): {t_fin - t_ini}\n")