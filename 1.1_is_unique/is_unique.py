"""This is the solution for the Is unique problem, in Python
"""

__author__ = "Ruvart"
__email__ = "contacto@ruvart.com"


from collections import Counter
import time


def isUnique_1(text: str) -> bool:
    """If the length of the string is < 2 return True.
    Uses Counter to determinehow many times each character appear in the string, then filter theh result to get only the ones that repeat once.
    If the length of the result is differente than the length of the string, then return false, else true"""

    str_len = len(text)

    if str_len < 2:
        return True

    c_str = Counter(text)

    unique_str = [key for key in c_str.keys() if c_str[key] == 1]

    if len(unique_str) != str_len:
        return False

    return True


def isUnique_2(text: str) -> bool:
    """If the length of the string is < 2 return True.
    Sorts the string, then for each character checks if it is the same as the last one, if it is equal return false, else true"""

    str_len = len(text)

    if str_len < 2:
        return True

    sorted_str = sorted(text)
    for x in range(1,str_len):
        if sorted_str[x-1] == sorted_str[x]:
            return False
    
    return True


def isUnique_3(text: str) -> bool:
    """If the length of the string is < 2 return True.
    For each char in the string search for the same in the substring from the position of this char to the end of the string"""
    
    str_len = len(text)

    if str_len < 2:
        return True

    for x in range(str_len):
        if text.find(text[x],x+1) != -1:
            return False
    
    return True




str_1 = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"
str_2 = "abcdefghijklmnopqrstuvwxyz "

print(f"isUnique_1 - ({len(str_1)}) \"{str_1}\":")
t_ini = time.process_time_ns()/1000000
result = isUnique_1(str_1)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"No son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")

print(f"isUnique_1 - ({len(str_2)}) \"{str_2}\":")
t_ini = time.process_time_ns()/1000000
result = isUnique_1(str_2)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"No son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")



print(f"isUnique_2 - ({len(str_1)}) \"{str_1}\":")
t_ini = time.process_time_ns()/1000000
result = isUnique_2(str_1)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"No son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")

print(f"isUnique_2 - ({len(str_2)}) \"{str_2}\":")
t_ini = time.process_time_ns()/1000000
result = isUnique_2(str_2)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"No son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")



print(f"isUnique_3 - ({len(str_1)}) \"{str_1}\":")
t_ini = time.process_time_ns()/1000000
result = isUnique_3(str_1)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"No son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")

print(f"isUnique_3 - ({len(str_2)}) \"{str_2}\":")
t_ini = time.process_time_ns()/1000000
result = isUnique_3(str_2)
t_fin = time.process_time_ns()/1000000
if result:
    print(f"Son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")
else:
    print(f"No son caracteres únicos.\t Tiempo (milisec): {t_fin - t_ini}\n")